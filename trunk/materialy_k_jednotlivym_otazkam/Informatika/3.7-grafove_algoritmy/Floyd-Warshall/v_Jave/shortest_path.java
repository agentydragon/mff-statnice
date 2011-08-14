/* shortest_path.java 
*
*  Author: Jeff Gosper 9/98
********************************************************************
The program runs the Floyd-Warshall all-pairs shortest path algorithm on a 5x5 user editable graph.
The program provides three frames:
1) The connectivity matrix for the graph is displayed, and can be edited.
2) The corresponding garph itself (represented in a node/edge fashion, is also displayed.
3) A 'float' frame is used as a message box that provides information as required, it operates in a modal manner (see below)
to stop the processing of code inside the loop as it processes the shortest_path.
********************************************************************

Programmer's Notes:
A modal Dialog receives all mouse, keyboard, and focus events that occur while it is open.  
The user must interact with a modal Dialog window and dismiss the window before returning to its parent window.
(Reprint permission by Symantec Corporation, Visual Cafe 1997)
Notes about the construction of the program.

One of the features of the program is that after a shortest pair calculation the shortest path can 
be viewed superimposed on the graph.

1) A modal message box (dialog box) is used to stop the execution of
the code such that it can be paused (if requested) between cycles. In early versions of this program,
when the 1.0 event model was employed, the modal box worked as intended in 
appletviewer 1.1.5 and Netscape (4.0.1) but not Explorer (3.02). 
It appears that events can be haulted with a modal dialogbox but not 
code is already being processed.

The code has now being upadted to the JDK 1.1 event modal and the applet has been tested on Netscape 4.06 and 
the appletviewer that comes in Visual Cafe 2.5

2) Another difference between the appletviewer and the browsers is that a Checkbox
can not be initialised to true in the constructor.

3) Part of the GUI can be seen in the Visual Cafe's visual environment editor.
These part appear between the special sets of comments bound by {{ }}. However Visual Cafe has not been able to parse 
the conponent layout in panel1 or Mycanvas into the visual GUI environment. Hence extra components and their
interactions appear in a block outside the specially marked block.

*/

import java.awt.*;
import java.applet.*;

public class shortest_path extends Applet
{
    /* The components listed below have the following meanings
    label1, labelPathMessage, labelDist - simple messages to build GUI
    choice1 - enables the selection of a pair of nodes for the shortest path display
	panelMatrix - a panel to hold the adjacency matrix, buttons, checkbox, and two simple messages
	labelTitle and labelSubTitle - holds title and sub-title
	*/
	
	//{{DECLARE_CONTROLS
	java.awt.Label label1 = new java.awt.Label();
	java.awt.Choice choice1 = new java.awt.Choice();
	java.awt.Label labelPathMessage = new java.awt.Label();
	java.awt.Label labelDist = new java.awt.Label();
	java.awt.Panel panelMatrix = new java.awt.Panel();
	java.awt.Label labelTitle = new java.awt.Label();
	java.awt.Label labelSubTitle = new java.awt.Label();
	//}}
	
	// The following components appear in the panel
    Label lblTitle4, lblTitle5;     //simple messages
    TextField[][] txtGrid;          //holds the adjacency matrix and (after Floyd-Warshall is run) the shortest distance
    Button btnFloyd, btnAbout, btnUpdate, btnReset; //buttons to start F-W calc., display an about window, update the graph, and reset the values, respectively, See event handles for these for further details
    Checkbox chkSingleStep;         //determines whether F-W calc. should be paused after each major cycle
    
    Msgbox msg;     //A class similar to a modal dialog-box that displays a simple message.
    
	MyCanvas canvas1; //An (embedded) class that displays the graph
 
    //Declare arrays
    int[][][] dist;         //Holds the distance matrices as the F-W calc. continues. The final dimension represent each major cycle (k) through the calculation.
                            //It is possible to work with only 2 matrices rather than n, however this has not been implemented
    int[][][] parent;       //Holds the parent matrices as the F-W calc. continues. The final dimension represent each major cycle (k) through the calculation.
                            //Again, it is possible to work with only 2 matrices rather than n, however this has not been implemented
    int[][] startval;       //Holds the initial values that come from the literals used to initialize the weights in the adjacency matrix.
    int[][] currentval;     // This 2D array holds the current shortest distance but is not updated as the F-W calc. proceeds (at least until the user
                            // request an update. This is required as the display matrix of textfields have two different meaning. Initially they hold 
                            // the weights for the adjacency matrix but during the F-W calc. they change to sortest distances. If the latter were used
                            // directly by the repaint method of MyCanvas then an incorrect graph would be displayed.
    int[] tempArray; // A temporary storage area
    int[][][] path;  // Holds the shortest path in the third dimension. i.e. for node i to j the nodes on the path appear
                     // in the sequence [i][j][node i, ...., node j]. Note that the initial and target node are included in the sequence.
    
    public void init() 
    {
	    //The choice component enables the user to select a pair of nodes for the shortest path route
        //The MyCanvas class is where the graph is drawn
        
		//{{INIT_CONTROLS
		setLayout(null);
		setSize(563,334);
		label1.setText("View Shortest path between:");
		setForeground(java.awt.Color.black);
		label1 = new java.awt.Label("View Shortest path between:");
		label1.setBounds(12,60,156,20);
		add(label1);
		choice1 = new java.awt.Choice();
		add(choice1);
		choice1.setBounds(168,60,60,25);
		labelPathMessage.setText("PATHS NOT AVAILABLE (run Floyd-Warshall)");
		labelPathMessage = new java.awt.Label("PATHS NOT AVAILABLE (run Floyd-Warshall)");
		labelPathMessage.setBounds(294,60,252,20);
		labelDist.setText("Dist: ---");
		labelPathMessage.setForeground(java.awt.Color.red);
		add(labelPathMessage);
		labelDist = new java.awt.Label("Dist: ---");
		labelDist.setBounds(228,60,54,20);
		add(labelDist);
		panelMatrix = new java.awt.Panel();
		panelMatrix.setLayout(null);
		panelMatrix.setBounds(252,90,306,228);
		labelTitle.setText("Calculation and visualization of the Floyd-Warshall \'All-Pairs-Shortest-Path\' algorithm.");
		labelTitle.setAlignment(java.awt.Label.CENTER);
		add(panelMatrix);
		labelTitle = new java.awt.Label("Calculation and visualization of the Floyd-Warshall 'All-Pairs-Shortest-Path' algorithm.",Label.CENTER);
		labelTitle.setBounds(6,6,552,27);
		labelSubTitle.setText("(c)  Jeffrey J. Gosper, Brunel Univeristy, 1998");
		labelSubTitle.setAlignment(java.awt.Label.CENTER);
		labelTitle.setFont(new Font("Dialog", Font.BOLD, 12));
		add(labelTitle);
		labelSubTitle = new java.awt.Label("(c)  Jeffrey J. Gosper, Brunel Univeristy, 1998",Label.CENTER);
		labelSubTitle.setBounds(6,30,552,27);
		labelSubTitle.setFont(new Font("Dialog", Font.BOLD, 12));
		add(labelSubTitle);
		//}}
		canvas1 = new MyCanvas();
		canvas1.setBounds(5,100,320,320);
		add(canvas1);

		// add all possible routes (except zero vertex ones)
		// NB: This method will cause problems if more than 9 nodes are used
		// as parsing becomes a problem
		for (int i=1;i<5+1;i++)
		    for (int j=1;j<5+1;j++)
		        if (i!=j)
		            choice1.addItem(""+i+" to "+j);

        //Create GUI componets
        txtGrid = new TextField[5][5];
        txtGrid[0][0] = new TextField("0", 3);
        txtGrid[0][1] = new TextField("3", 3);
        txtGrid[0][2] = new TextField("8", 3);
        txtGrid[0][3] = new TextField("999", 3);
        txtGrid[0][4] = new TextField("-4", 3);
        txtGrid[1][0] = new TextField("999", 3);
        txtGrid[1][1] = new TextField("0", 3);
        txtGrid[1][2] = new TextField("999", 3);
        txtGrid[1][3] = new TextField("1", 3);
        txtGrid[1][4] = new TextField("7", 3);
        txtGrid[2][0] = new TextField("999", 3);
        txtGrid[2][1] = new TextField("4", 3);
        txtGrid[2][2] = new TextField("0", 3);
        txtGrid[2][3] = new TextField("999", 3);
        txtGrid[2][4] = new TextField("999", 3);
        txtGrid[3][0] = new TextField("2", 3);
        txtGrid[3][1] = new TextField("999", 3);
        txtGrid[3][2] = new TextField("-5", 3);
        txtGrid[3][3] = new TextField("0", 3);
        txtGrid[3][4] = new TextField("999", 3);
        txtGrid[4][0] = new TextField("999", 3);
        txtGrid[4][1] = new TextField("999", 3);
        txtGrid[4][2] = new TextField("999", 3);
        txtGrid[4][3] = new TextField("6", 3);
        txtGrid[4][4] = new TextField("0", 3);

        //Create new GUI component objects
        lblTitle4 = new Label("Adjacency matrix (999 means no connection)");
        lblTitle5 = new Label("(only integer weights allowed)");
        btnFloyd = new Button("Floyd-Warshall");
        btnUpdate = new Button("Update Diagram");
        btnReset = new Button("Reset Values");
        btnAbout = new Button("About");
        //chkSingleStep =  new Checkbox("Single Step",true);  //This line worked in the appleletviewer 1.1.5
        								//but not in Netscape or Explorer (appletviewers 1.0)		
        chkSingleStep =  new Checkbox("Single Step");
        chkSingleStep.setState(true);
        
        //Build GUI using a GridBag using the 'add' function defined below
        GridBagLayout gbLayout = new GridBagLayout();
        panelMatrix.setLayout(gbLayout);
        GridBagConstraints gbConstraints = new GridBagConstraints();
        gbConstraints.fill = GridBagConstraints.NONE;
        gbConstraints.anchor = GridBagConstraints.CENTER;

        gbConstraints.weightx = 10;
        gbConstraints.weighty = 10;
        add(lblTitle4, gbLayout, gbConstraints, 0, 0, 10, 1);
        add(lblTitle5, gbLayout, gbConstraints, 0, 1, 10, 1);
        gbConstraints.fill = GridBagConstraints.BOTH;

        for(int i = 0; i < 5; i++)
            for(int j = 0; j < 5; j++)
                add(txtGrid[i][j], gbLayout, gbConstraints, j, i+3, 1, 1);

        gbConstraints.fill = GridBagConstraints.HORIZONTAL;
        add(btnFloyd, gbLayout, gbConstraints, 6, 3, 1, 1);
        add(btnAbout, gbLayout, gbConstraints, 6, 4, 1, 1);
        add(btnUpdate, gbLayout, gbConstraints, 6, 5, 1, 1);
        add(btnReset, gbLayout, gbConstraints, 6, 6, 1, 1);
        gbConstraints.fill = GridBagConstraints.NONE;
        add(chkSingleStep, gbLayout, gbConstraints, 6, 7, 1, 1);

        // Create and dimension arrays
        startval = new int[5][5];
        currentval = new int[5][5];
        tempArray = new int[5];
        path = new int[5][5][5];
        dist = new int[5][5][5+1];  // require 0-5 2D tables, i.e. %=1 tables. NB: 5+1 has been used to aid the adjustment
                                    // of the code to handle n nodes.
        parent = new int[5][5][5+1]; //as above

        //These latter could be initialized using the following code. However JAVA automatically initializes the elements to zero.
        /*
        for(int i = 0; i < 5; i++)
            for(int j = 0; j < 5; j++)
                for(int k = 0; k < 6; k++)
                {
                    dist[i][j][k] = 0;
                    parent[i][j][k] = 0;
                }
        */
        
        for(int i = 0; i < 5; i++)
            for(int j = 0; j < 5; j++)
                for(int k = 0; k < 5; k++)
                    path[i][j][k] = -1;  //initialisation to -1 needed to flag when path finished.
	
        // Initialize the arrays that hold the current connectivity matrix (currentval)
        // as well as those used at the start of a Floyd-Warshall run. The former will
        // change as the Floyd-Warshall algorithms runs (as will the text in the text boxes)
        for(int i = 0 ; i < 5;i++)
            for(int j = 0 ; j < 5 ; j++)
            {
                startval[i][j]=Integer.parseInt(txtGrid[i][j].getText());
                currentval[i][j]=Integer.parseInt(txtGrid[i][j].getText());
            }

        // Set up listerners for the buttons and choice item
	    //{{REGISTER_LISTENERS
		SymItem lSymItem = new SymItem();
		choice1.addItemListener(lSymItem);
		//}}
	    SymAction lSymAction = new SymAction();
	    btnReset.addActionListener(lSymAction);
	    btnUpdate.addActionListener(lSymAction);
	    btnAbout.addActionListener(lSymAction);
	    btnFloyd.addActionListener(lSymAction);
    }

    //Define what happens when the buttons are clicked
	class SymAction implements java.awt.event.ActionListener
	{
		public void actionPerformed(java.awt.event.ActionEvent event)
		{
			Object object = event.getSource();
			if (object == btnReset)
				btnReset_ActionPerformed(event);
			else if (object == btnUpdate)
				btnUpdate_ActionPerformed(event);
			else if (object == btnAbout)
				btnAbout_ActionPerformed(event);
			else if (object == btnFloyd)
				btnFloyd_ActionPerformed(event);
		}
	}

    //Define what happens whem the entry in the choice box is altered.
	class SymItem implements java.awt.event.ItemListener
	{
		public void itemStateChanged(java.awt.event.ItemEvent event)
		{
			Object object = event.getSource();
			if (object == choice1)
				choice1_ItemStateChanged(event);
		}
	}

	void choice1_ItemStateChanged(java.awt.event.ItemEvent event)
	{
		// to do: code goes here.
			 
		//{{CONNECTION
		// Repaint the Applet
		canvas1.repaint();
    	//}}
	}
	
	void buttonUpdate_ActionPerformed(java.awt.event.ActionEvent event)
	{
        //The Update button has been pressed
		// Update the Canvas
		canvas1.repaint();
	}
	
	void btnReset_ActionPerformed(java.awt.event.ActionEvent event)
	{
        //The reset button has been pressed
        //reset the values in the text boxes and ensure the default color white is used.
        for(int i = 0; i<5;i++)
            for(int j = 0; j<5;j++)
            {
                currentval[i][j]=startval[i][j];
                txtGrid[i][j].setText("" + startval[i][j]);
                txtGrid[i][j].setBackground(Color.white);
                for(int k =0; k<5+1;k++)
                    parent[i][j][k] = 0;  //Reinitialise to 0, no parent
                for(int k =0; k<5;k++)
                    path[i][j][k] = -1;  //Reinitialise to -1 needed to flag when path finished.
            }	
        // The graph now needs to be rebuilt and path message updated. 
        canvas1.repaint();
        labelPathMessage.setText("PATHS NOT AVAILABLE (run Floyd-Warshall)");
    }

    void btnUpdate_ActionPerformed(java.awt.event.ActionEvent event)
    {
        // The update button has been pressed.
        // The values the user has entered into the text boxes will be used  
        // to build a new connection graph on the canvas and for further Floyd-Warshall calcs.
        
        // First ensure values are valid .e. can be parsed to an integer
        makeArrayValuesValid();
        //
        // There is need to reinitialze the various matrices as these are now out-of-date.
        for(int i = 0; i < 5; i++)
            for(int j = 0; j < 5; j++)
                for(int k = 0; k < 5; k++)
                {
                    dist[i][j][k] = 0;
                    parent[i][j][k] = 0;
                    path[i][j][k] = -1;  //initialise to -1 needed to flag when path finished.
                }
        for(int i=0;i<5;i++)
            for(int j=0;j<5;j++)
                currentval[i][j]=Integer.parseInt(txtGrid[i][j].getText());
        // The graph now needs to be rebuilt and path message updated. 
        canvas1.repaint();
        labelPathMessage.setText("PATHS NOT AVAILABLE (run Floyd-Warshall)");
	}
	
	void btnAbout_ActionPerformed(java.awt.event.ActionEvent event)
	{
        //Display a short 'About' screen
        Container theFrame = this;
        do {
        	theFrame = theFrame.getParent();
        } while ((theFrame != null) && !(theFrame instanceof Frame));
        if (theFrame == null)
        	theFrame = new Frame();
        (new Msgbox((Frame)theFrame, "About All Pairs Shortest Path", "This applet runs the O(n^3) Floyd-Warshall algorithm.")).setVisible(true);
	}
	
	void btnFloyd_ActionPerformed(java.awt.event.ActionEvent event)
	{
        // Run the Floyd-Warshall all-pairs algorithm
        // First ensure values are valid .e. can be parsed to an integer
        makeArrayValuesValid();
        
        // Update the currentval array so the diagram will reflect the values it was run on.
        for(int i=0;i<5;i++)
            for(int j=0;j<5;j++)
                currentval[i][j]=Integer.parseInt(txtGrid[i][j].getText());
        // Set up the initial distance and parent matrices
        // See Corman, T.H., Leiserson, C.E., and Rivest, R.L., 'Introduction to Algorithms', section 26.2, p. 558-562.
        for(int i=0;i<5;i++)
            for(int j=0;j<5;j++)
            {
    	        dist[i][j][0]=(Integer.parseInt(txtGrid[i][j].getText()));
                if ((i!=j)&&((Integer.parseInt(txtGrid[i][j].getText()))!=999))
                    parent[i][j][0]=i;
                else
                    parent[i][j][0]=-1;
            }	
        for(int k=1;k<=5;k++)  // as both i and j run from 0 upwards, but k starts from 1
        {                      // there is a need to adjust k, i.e. create and use kadj.
           int kadj=k-1;
           for(int i=0;i<5;i++)
              for(int j=0;j<5;j++)
    	      {
    	        // A problem exists in that 999 is not infinity and therefore 999-(a value) will
    	        // be seen as a new value rather than remaining unchanged at infinite. 
    	        // This needs to be caught and processed appropriately
    	        if ((dist[i][kadj][k-1]==999)||(dist[kadj][j][k-1]==999))
    			{
    			    dist[i][j][k] = dist[i][j][k-1];
    			    parent[i][j][k]=parent[i][j][k-1];
    			}
    			else
    			{
    		 	    if (dist[i][j][k-1] > dist[i][kadj][k-1] + dist[kadj][j][k-1])
                    {
                        dist[i][j][k] = dist[i][kadj][k-1] + dist[kadj][j][k-1];
    			        parent[i][j][k]=parent[kadj][j][k-1];
               	    }
               	    else
               	    {
                        dist[i][j][k] = dist[i][j][k-1];
                        parent[i][j][k]=parent[i][j][k-1];
                    }
    		    }
    		    // Check for a change in value and highlight it if it has changed. Else reset the colour to white
    		    if(!(txtGrid[i][j].getText()).equals((String)("" + dist[i][j][k])))
    			    txtGrid[i][j].setBackground(Color.green);
    			else
    			    txtGrid[i][j].setBackground(Color.white);
    		    txtGrid[i][j].setText("" + dist[i][j][k]);
    	     }
 
    	     // If the single step process is required than a modal dialog box is used to pause the processing. 
    	     // Please note that in some browsers the pause is not achieved as desired (see note at the beginning of the program)
             if (chkSingleStep.getState())
             {
            	Container theFrame = this;
            	do {
            		theFrame = theFrame.getParent();
            	} while ((theFrame != null) && !(theFrame instanceof Frame));
            	if (theFrame == null)
            		theFrame = new Frame();
            	(new Msgbox((Frame)theFrame, "Continue?", "Cycle complete using nodes 1 - " + (k))).setVisible(true);
             }
       }
       // Check for problems in the final matrix e.g those caused by negative cycles.
       // This can be detected if the dist[i][i][] (diagonal values i.e. upper-left to lower right) become nonzero.
       // Warn the user if a problem, and avoid drawing the path 
       boolean FlagOK=true;
       for (int i=0;i<5;i++)
          if (dist[i][i][5]!=0) FlagOK=false;
       if (FlagOK==false)
       {
            //Display error message
    		// Create with title, message, show as modal..
    		Container theFrame = this;
    		do {
    			theFrame = theFrame.getParent();
    		} while ((theFrame != null) && !(theFrame instanceof Frame));
    		if (theFrame == null)
    			theFrame = new Frame();
    		(new Msgbox((Frame)theFrame, "Error", "Error: Negative cycles detected: Please remove!")).setVisible(true);
       }
       else  // no invalid diagonal terms, therefore continue
       {
    	   // Process parent array to determine path from each node to each node
    	   for (int i=0;i<5;i++)
    	      for (int j=0;j<5;j++)
    	      {
    	        int counter=0;
    	        int index=j;
    	        // use the final parent matrix i.e. parent[][][5].
    	        // Track through each row following the pointers within the parent matrix.
    	        // These provide the intermediate nodes on the path joining i to j
    	        // in reverse order.
    	        while((parent[i][index][5]!=-1)&&(parent[i][index][5]!=i))
    	        {
    	            tempArray[counter++]=parent[i][index][5];
    	            index=parent[i][index][5];
    	        }
    	        // Reconstruct the full path, in correct order, from i to j including the two terminal nodes.
    	        // Counter can be used to reverse the connecting nodes
    	        // If there is no path at all between two nodes this needs special treatment.
    	        // These are recognized as having no intervening nodes and a distance between the nodes of 999.
    	        // Otherwise build path.
    	        if (!((counter==0)&&(dist[i][index][5]==999)))
    	        {
    		        path[i][j][0]=i;
    		        int counter2=1;
    		        for (int k=(counter-1);k>-1;k--)
    		            path[i][j][counter2++]=tempArray[k];
    		        path[i][j][counter2]=j;
                }  
    	      }   
           // The graph now needs to be rebuilt and the 'path available' message updated. 
           canvas1.repaint();
           labelPathMessage.setText("PATHS AVAILABLE");
       }
       
       //F-W calc. complete now reset all textfields holding the distance matrix white
       for(int i=0;i<5;i++)
          for(int j=0;j<5;j++)
            txtGrid[i][j].setBackground(Color.white);
	}

    // MyCanvas is a class that draws the graph. 
    // All data required for the graphics comes from the applet 
    class MyCanvas extends Canvas
    {
        // Local arrays to hold the coordinates of the nodes
        int[] x;
        int[] y;
 
    	public void paint(Graphics g)
    	{
            int x[]={25,125,225,200,50};
            int y[]={80,15,80,200,200};
            Color c_red, c_black, c_white, c_green;
            c_red = new Color(255,0,0);
            c_black = new Color(0,0,0);
            c_white = new Color(255,255,255);
            c_green = new Color(0,255,0);
            int radius = 10; //radius of the circles used as arrow heads
            
            // draw 'arrows' corresponding to connections in the upper-right of the connection table (j>i)
            g.setColor(c_black);
            for(int i = 0; i<5;i++)
                for(int j = i+1; j<5;j++)
                {
                    // Check whether connection exists and draw if it does.
                    if(currentval[i][j]!=999)
                    {
                        g.drawLine(x[i],y[i],x[j],y[j]);
                        // The .7 and .3 here simply place the distance text towards the end of the arrow, specifically 7/10 along the way
                        g.drawString(""+currentval[i][j],(int)(x[i]*.7+x[j]*0.3),(int)(y[i]*0.7+y[j]*0.3));    
                        // A circle is used rather than an arrow head as its independent of the direction of the line, i.e. easier to program.
                        // The circle is to be positioned 14/15 down the line
                        double dist=Math.sqrt((x[i]-x[j])*(x[i]-x[j])+(y[i]-y[j])*(y[i]-y[j]));
                        double fraction=1-(15/dist);
                        g.fillOval((int)(x[i]*(1-fraction)+x[j]*fraction-radius/2),(int)(y[i]*(1-fraction)+y[j]*fraction-radius/2),radius,radius);
                   }             
                }
            // Draw 'arrows' corresponding to connections in the lower-left of the connection table
    	    // The code is similar except the colour is red, the arrow heads are 1/15 along the arrow, and the arrow is offset by a same amount such that if
    	    // a forward arrow and backward arrow exists between two nodes they are both drawn and seen rather than being superimposed.
    	    g.setColor(c_red);
    	    int offset=3;
            for(int i = 0; i<5;i++)
                for(int j = i+1; j<5;j++)
                {
                    if(currentval[j][i]!=999)
                    {
                        g.drawLine(x[j]+offset,y[j]+offset,x[i]+offset,y[i]+offset);
                        g.drawString(""+currentval[j][i],(int)(x[i]*0.3+x[j]*0.7),(int)(y[i]*0.3+y[j]*0.7));    
                        double dist=Math.sqrt((x[i]-x[j])*(x[i]-x[j])+(y[i]-y[j])*(y[i]-y[j]));
                        double fraction=1-(15/dist);
                        g.fillOval((int)((x[i]+offset)*fraction+(x[j]+offset)*(1-fraction)-radius/2),(int)((y[i]+offset)*fraction+(y[j]+offset)*(1-fraction)-radius/2),radius,radius);
                    }
                }
            // Draw circles representing the nodes
            // First draw a whit filled circle to hide anything below and then a black outline
    	    g.setColor(c_white);
            for(int i = 0; i<5;i++)
                g.fillOval(x[i]-10,y[i]-12,20,20);
            g.setColor(c_black);
            for(int i = 0; i<5;i++)
                g.drawOval(x[i]-10,y[i]-12,20,20);
            // Add node numbers to the graph
            for(int i = 0; i<5;i++)
                g.drawString(""+(i+1),x[i]-2,y[i]+1);
                
            // The next section of code highlights (as a green path) the shortest path (if known) 
            // between the nodes selected in the choice box.
            // The invalid/'null' value flag of '-1' is used in this code. 
            // The 3D array path contains the relevant path data. The first two dimensions correspond to the source and target nodes. 
            // The third represents the path from the source to the target. 
            // I have chosen to store both source as the first entry and the target as the last although 
            // they are redundant as the first index gives the first value and the second index the later.
            
            g.setColor(c_green);
            
            // Parse the text within the choice box to extract the source and target nodes
    	    // The two node numbers are required for further processing
    	    String tempString, tempString1, tempString2;
    	    tempString=choice1.getSelectedItem();
    	    tempString1=tempString.substring(0,1);
    	    tempString2=tempString.substring(5,6);
    	    int node1 = Integer.parseInt(tempString1)-1; 
    		int node2 = Integer.parseInt(tempString2)-1; 
    		
    		// Display the shortest distance in the appropriate label
            labelDist.setText("Dist: "+txtGrid[node1][node2].getText());
            
            // Display the full shortest path from source node (node1) to target node (node2)
            for(int i=0;i<5-1;i++)
            {
                if(path[node1][node2][i+1]!=-1)   
                    g.drawLine(x[(path[node1][node2][i])],y[(path[node1][node2][i])],x[(path[node1][node2][i+1])],y[(path[node1][node2][i+1])]);
    	    }
    	}
    }    

    //The following procedure simplifies the construction of the screen
    //using the GridBagLayout mechanism
    private void add(Component component, GridBagLayout layout,
    GridBagConstraints constraints, int x, int y, int w, int h)
    {
        constraints.gridx = x;
        constraints.gridy = y;
        constraints.gridwidth = w;
        constraints.gridheight = h;
        layout.setConstraints(component, constraints);
        panelMatrix.add(component);
    }
	
   public void makeArrayValuesValid()
   {
        //Check all data for validity. If not valid set to 999 if not on diagonal (\) or 0 if it is
        for(int i=0;i<5;i++)
            for(int j=0;j<5;j++)
                {
                    try
                    {
                        Integer.parseInt(txtGrid[i][j].getText());    
                    }
        	        catch(NumberFormatException e)
        	        {
        	            if (i!=j)
        	                txtGrid[i][j].setText("999");
        	            else
        	                txtGrid[i][j].setText("0");
        	                
        	        }
                }
   }

}


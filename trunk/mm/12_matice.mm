<map version="0.9.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Matice A m x n" ID="ID_1723255651" CREATED="1283093380553" MODIFIED="1327951728250"><hook NAME="MapStyle">

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node">
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right">
<stylenode LOCALIZED_TEXT="default" MAX_WIDTH="600" COLOR="#000000" STYLE="as_parent">
<font NAME="SansSerif" SIZE="12" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.note"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="12" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="12" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="12" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000">
<font SIZE="20"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="12"/>
</stylenode>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook URI="../bc/matematika/obrazky/matrix.png" SIZE="1.0" NAME="ExternalObject"/>
<node POSITION="right" ID="ID_1068436514" CREATED="1327951482281" MODIFIED="1327956885093" HGAP="30"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>sloupcov&#253; prostor</b>&#160;- podprostor K^m gen. sloupci A
    </p>
  </body>
</html>

</richcontent>
<edge COLOR="#000000" WIDTH="1"/>
</node>
<node POSITION="right" ID="ID_391543955" CREATED="1327951596546" MODIFIED="1327952176625" HGAP="30"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>&#345;&#225;dkov&#253; prostor</b>&#160;- podprostor K^n gen. &#345;&#225;dky A
    </p>
  </body>
</html>

</richcontent>
</node>
<node POSITION="right" ID="ID_1796303954" CREATED="1327951768625" MODIFIED="1327956397468" HGAP="30" VSHIFT="-300"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>j&#225;dro matice</b>&#160;- podprostor K^n gen. &#345;e&#353;en&#237;mi A<b>x</b>=<b>0</b>
    </p>
  </body>
</html>

</richcontent>
<hook EQUATION="Ker A=\mathcal{L}(\{\mathbf{x}|A\mathbf{x}=\mathbf{0}\})" NAME="plugins/latex/LatexNodeHook.properties"/>
</node>
<node POSITION="right" ID="ID_1574360083" CREATED="1327956841500" MODIFIED="1327956924203" HGAP="-220" VSHIFT="-160"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>matice lin.zobrazen&#237;</b>
    </p>
  </body>
</html>

</richcontent>
<hook NAME="FreeNode"/>
</node>
<node POSITION="left" ID="ID_31103890" CREATED="1327952619203" MODIFIED="1327956419156" HGAP="-670" VSHIFT="20"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>hodnost matice rank(A)</b>&#160;- po&#269;et LN &#345;&#225;dk&#367;/sloupc&#367; matice
    </p>
  </body>
</html>

</richcontent>
<hook EQUATION="\mathrm{rank}(A) = \dim (\text{\footnotesize &#x159;&#xe1;dkov&#xe9;ho/sloupcov&#xe9;ho\ prostoru}) \leq\min\{m,n\}" NAME="plugins/latex/LatexNodeHook.properties"/>
<node TEXT="plat&#xed;:" ID="ID_780283691" CREATED="1327953347875" MODIFIED="1327954030640" HGAP="-630">
<hook EQUATION="\dim(Ker A)+\mathrm{rank}(A)=n" NAME="plugins/latex/LatexNodeHook.properties"/>
</node>
<node TEXT="plat&#xed;:" ID="ID_1731825978" CREATED="1327953957171" MODIFIED="1327954044125" HGAP="-690" VSHIFT="-10">
<hook EQUATION="\mathrm{rank}(AB) \leq\min\{\mathrm{rank}(A),\mathrm{rank}(B)\}" NAME="plugins/latex/LatexNodeHook.properties"/>
</node>
</node>
<node POSITION="left" ID="ID_1087073797" CREATED="1327953452640" MODIFIED="1327956409515" HGAP="-600" VSHIFT="10"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>regul&#225;rn&#237; matice A nxn</b>&#160;-&#160;&#160;pokud A<b>x</b>=0 m&#225; jen 1 &#345;e&#353;en&#237; <b>x</b>=<b>0</b>&#160;
    </p>
  </body>
</html>

</richcontent>
<hook EQUATION="\mathrm{rank}(A\ regul&#xe1;rn&#xed;)=n" NAME="plugins/latex/LatexNodeHook.properties"/>
<node ID="ID_1552189431" CREATED="1327953701968" MODIFIED="1327953724125" HGAP="-480"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      jinak je <b>singul&#225;rn&#237;</b>
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="regul&#xe1;rn&#xed; R a A m x n pak plat&#xed;:" ID="ID_1672158557" CREATED="1327955447796" MODIFIED="1327955724437" HGAP="-540">
<hook EQUATION="\mathrm{rank}(RA)=\mathrm{rank}(A)" NAME="plugins/latex/LatexNodeHook.properties"/>
</node>
<node TEXT="n&#xe1;soben&#xed; regul&#xe1;rn&#xed;ch:" ID="ID_1166081698" CREATED="1327955653218" MODIFIED="1327955819656" HGAP="-860">
<hook EQUATION="A_1,A_2,\dots,A_q \in \mathbb{R}^{n \times n}\text{ regul&#xe1;rn&#xed;, }q \ge 1\text{ potom }A_1 A_2 \dots A_q\text{ je regul&#xe1;rn&#xed;}" NAME="plugins/latex/LatexNodeHook.properties"/>
</node>
<node TEXT="A je regul&#xe1;rn&#xed; &#x21d4;" ID="ID_1097396871" CREATED="1327955813328" MODIFIED="1327955958750" HGAP="-470">
<hook EQUATION="A^{T} regul&#xe1;rn&#xed;" NAME="plugins/latex/LatexNodeHook.properties"/>
</node>
<node TEXT="A je regul&#xe1;rn&#xed; &#x21d4;" ID="ID_746448948" CREATED="1327955813328" MODIFIED="1327955965062" HGAP="-480" VSHIFT="-50">
<hook EQUATION="A^{-1} regul&#xe1;rn&#xed;" NAME="plugins/latex/LatexNodeHook.properties"/>
</node>
</node>
<node POSITION="left" ID="ID_1013121070" CREATED="1327954186218" MODIFIED="1327954856921" HGAP="-550" VSHIFT="-10"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>transponovan&#225; matice</b>
    </p>
  </body>
</html>

</richcontent>
<hook EQUATION="(A^T)_{ji} = A_{ij} \, (i=1, \dots, m; j=1, \dots, n)" NAME="plugins/latex/LatexNodeHook.properties"/>
<node TEXT="symetrick&#xe1; matice" ID="ID_889722127" CREATED="1327954318656" MODIFIED="1327954513046" HGAP="-520" VSHIFT="10">
<font BOLD="true"/>
<hook EQUATION="A^T=A,\ \mathrm{rank}(A^T)=\mathrm{rank}(A)" NAME="plugins/latex/LatexNodeHook.properties"/>
<node TEXT="plat&#xed;:" ID="ID_418517766" CREATED="1327954379406" MODIFIED="1327954519187" HGAP="-460">
<hook EQUATION="\forall A \in \mathbb{R}^{m \times n}\text{ je }A^T A\text{ symetrick&#xe1;}" NAME="plugins/latex/LatexNodeHook.properties"/>
</node>
</node>
</node>
<node POSITION="left" ID="ID_1110944779" CREATED="1327954658000" MODIFIED="1327956879828" HGAP="-660" VSHIFT="-210"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>inverzn&#237; matice</b>
    </p>
  </body>
</html>

</richcontent>
<hook EQUATION=" \text{k } A\in \mathbb{R}^{n \times n} \exists !A^{-1}: AA^{-1} = A^{-1}A=I \Leftrightarrow A\text{ je regul&#xe1;rn&#xed;}" NAME="plugins/latex/LatexNodeHook.properties"/>
<node TEXT="v&#xfd;po&#x10d;et IM:" ID="ID_1998141726" CREATED="1327955159015" MODIFIED="1327955261718" HGAP="-570" VSHIFT="10">
<hook EQUATION="(A|I)=(I|A^{-1})" NAME="plugins/latex/LatexNodeHook.properties"/>
</node>
<node ID="ID_1463423963" CREATED="1327956435359" MODIFIED="1327956563468" HGAP="-630" VSHIFT="10"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      A regul&#225;rn&#237; pak &#8704; <b>b</b>: A<b>x</b>=<b>b</b>&#160;plat&#237;:
    </p>
  </body>
</html>

</richcontent>
<hook EQUATION="\mathbf{x}=A^{-1}\mathbf{b}" NAME="plugins/latex/LatexNodeHook.properties"/>
<node TEXT="pokud m&#xe1;m v&#xed;c prav&#xfd;ch stran provedu&#xa;G-J eliminaci jen jednou pro A^-1" ID="ID_1171297337" CREATED="1327956568250" MODIFIED="1327956752921" HGAP="-250" VSHIFT="-40">
<icon BUILTIN="idea"/>
<hook NAME="FreeNode"/>
</node>
</node>
</node>
</node>
</map>

/* generated javascript */
var skin = 'vector';
var stylepath = 'http://bits.wikimedia.org/skins-1.5';

/* MediaWiki:Common.js */
/*<source lang="javascript">*/
 
/* hvězdičky pro featured articles v jiných jazycích */
function LinkFA() 
{
    var langbox = document.getElementById("p-lang");
    if (!langbox) return;
    var interwiki = langbox.getElementsByTagName("li");
    // iterace přes všechny mezijazykové odkazy
    for (var i = 0; i < interwiki.length; ++i)
    {
        var link = interwiki[i];
        var language = link.className.substring(10); // smazat "interwiki-"
        // zkusit najít odpovídající FA element
        var falink = document.getElementById("fa-link-" + language);
        if (falink)
        {
            link.className += " featured";
            link.title = "Tento článek patří mezi nejlepší";
        }
    }
}

/*******************************\
|*     Podpora pro navboxy     *|
\*******************************/

/* Pro další informace vizte [[:en:Help:Collapsing]]. */

var autoCollapse = 2;
var collapseCaption = "skryj";
var expandCaption = "ukaž";
 
function collapseTable( tableIndex )
{
    var Button = document.getElementById( "collapseButton" + tableIndex );
    var Table = document.getElementById( "collapsibleTable" + tableIndex );
 
    if ( !Table || !Button ) {
        return false;
    }
 
    var Rows = Table.rows;
 
    if ( Button.firstChild.data == collapseCaption ) {
        for ( var i = 1; i < Rows.length; i++ ) {
            Rows[i].style.display = "none";
        }
        Button.firstChild.data = expandCaption;
    } else {
        for ( var i = 1; i < Rows.length; i++ ) {
            Rows[i].style.display = Rows[0].style.display;
        }
        Button.firstChild.data = collapseCaption;
    }
}
 
function createCollapseButtons()
{
    var tableIndex = 0;
    var NavigationBoxes = new Object();
    var Tables = document.getElementsByTagName( "table" );
 
    for ( var i = 0; i < Tables.length; i++ ) {
        if ( hasClass( Tables[i], "collapsible" ) ) {
 
            /* only add button and increment count if there is a header row to work with */
            var HeaderRow = Tables[i].getElementsByTagName( "tr" )[0];
            if (!HeaderRow) continue;
            var Header = HeaderRow.getElementsByTagName( "th" )[0];
            if (!Header) continue;
 
            NavigationBoxes[ tableIndex ] = Tables[i];
            Tables[i].setAttribute( "id", "collapsibleTable" + tableIndex );
 
            var Button     = document.createElement( "span" );
            var ButtonLink = document.createElement( "a" );
            var ButtonText = document.createTextNode( collapseCaption );
 
            Button.className = "collapseButton";  //Styles are declared in Common.css
 
            ButtonLink.style.color = Header.style.color;
            ButtonLink.setAttribute( "id", "collapseButton" + tableIndex );
            ButtonLink.setAttribute( "href", "javascript:collapseTable(" + tableIndex + ");" );
            ButtonLink.appendChild( ButtonText );
 
            Button.appendChild( document.createTextNode( "[" ) );
            Button.appendChild( ButtonLink );
            Button.appendChild( document.createTextNode( "]" ) );
 
            Header.insertBefore( Button, Header.childNodes[0] );
            tableIndex++;
        }
    }
 
    for ( var i = 0;  i < tableIndex; i++ ) {
        if ( hasClass( NavigationBoxes[i], "collapsed" ) || ( tableIndex >= autoCollapse && hasClass( NavigationBoxes[i], "autocollapse" ) ) ) {
            collapseTable( i );
        } 
        else if ( hasClass( NavigationBoxes[i], "innercollapse" ) ) {
            var element = NavigationBoxes[i];
            while (element = element.parentNode) {
                if ( hasClass( element, "outercollapse" ) ) {
                    collapseTable ( i );
                    break;
                }
            }
        }
    }
} 
 

/* Test if an element has a certain class *
 *
 * Převzato z [[:en:MediaWiki:Common.js]]
 */
 
var hasClass = (function () {
    var reCache = {};
    return function (element, className) {
        return (reCache[className] ? reCache[className] : (reCache[className] = new RegExp("(?:\\s|^)" + className + "(?:\\s|$)"))).test(element.className);
    };
})();


/**********************\
|* Změna názvu článku *|
|* vytvořil Danny B.  *|
\**********************/
function SpravnyNazev ()
  {
  var nodSpravnyNazev = document.getElementById ("Sablona__Nazev_Spravny-nazev");

  if (nodSpravnyNazev)
    {
    var nodSablonaNazev = document.getElementById ("Sablona__Nazev");
    var nodNadpis = document.getElementsByTagName ("h1") [0];
    var anodNadpisObsah = nodNadpis.childNodes;
    var nodPuvodniNazev = null;
    for (var i = 0; i < anodNadpisObsah.length; ++i)
      {
      var n = anodNadpisObsah[i];
      if (n.nodeType == 3) // Node.TEXT_NODE
        {
        nodPuvodniNazev = n;
        break;
        }
      }
    if (nodPuvodniNazev == null) return;
    nodNadpis.replaceChild (nodSpravnyNazev, nodPuvodniNazev);
    nodSablonaNazev.parentNode.removeChild (nodSablonaNazev);
    }
  }


/****************************************************************************\
|* Přidá položku "Vypsat pahýly" do seznamu nástrojů na stránkách kategorií *|
|* vytvořil Danny B.                                                        *|
\****************************************************************************/
function addToolListStubs() {
  	
  var nodDivTb = document.getElementById( "p-tb" );
  
  if( !nodDivTb || wgNamespaceNumber != 14 && wgNamespaceNumber != 15 ) return;
  
  var nodAListStubs = document.createElement( "a" );
  nodAListStubs.href = "http://toolserver.org/~danny_b/powersearch/pahyly-v-kategorii.php?kategorie=" + encodeURIComponent( wgTitle );
  nodAListStubs.title = "Zobrazit seznam všech pahýlů v této kategorii";
  nodAListStubs.appendChild( document.createTextNode( "Vypsat pahýly" ) );
  
  var nodLiListStubs = document.createElement( "li" );
  nodLiListStubs.id = "t-liststubs";
  nodLiListStubs.appendChild( nodAListStubs );
  
  var nodUlTb = nodDivTb.getElementsByTagName( "ul" )[0];
  nodUlTb.appendChild( nodLiListStubs );
  
}


/*****************\
|*  csWikipedia  *|
|* customization *|
\*****************/
 
function CustomizeCsWikipedia ()
  {
  LinkFA();
  SpravnyNazev();
  addToolListStubs();
  createCollapseButtons ();
  }
 
if (window.addEventListener)
  {
  window.addEventListener ("load", CustomizeCsWikipedia, false)
  }
else if (window.attachEvent)
  {
  window.attachEvent ("onload", CustomizeCsWikipedia)
  };
 
/*</source>*/

/* MediaWiki:Vector.js */
/* JavaScript pro uživatele používající vzhled „Vektor“ */
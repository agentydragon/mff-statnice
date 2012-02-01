<map version="0.9.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node ID="ID_1723255651" CREATED="1283093380553" MODIFIED="1328038013640"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>neprocedur&#225;ln&#237;/deklarativn&#237; programov&#225;n&#237;</b>
    </p>
    <p>
      by describing what the program should accomplish,
    </p>
    <p>
      rather than describing how to go about accomplishing it.
    </p>
  </body>
</html>

</richcontent>
<hook NAME="MapStyle">

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
<font BOLD="false"/>
<node POSITION="right" ID="ID_279331000" CREATED="1328038040468" MODIFIED="1328043959156" HGAP="420" VSHIFT="40"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Funkcion&#225;ln&#237; programov&#225;n&#237;</b>
    </p>
    <p>
      is a programming paradigm that treats computation as the evaluation
    </p>
    <p>
      of mathematical functions and avoids state and mutable data.
    </p>
  </body>
</html>

</richcontent>
<hook NAME="FreeNode"/>
<node TEXT="funkce se daj&#xed; pou&#x17e;&#xed;t jako parametry funkc&#xed;" ID="ID_870430851" CREATED="1328039004718" MODIFIED="1328046226656" HGAP="-100" VSHIFT="-50">
<icon BUILTIN="idea"/>
<hook NAME="FreeNode"/>
</node>
<node ID="ID_675525996" CREATED="1328046101734" MODIFIED="1328046233609" HGAP="140" VSHIFT="-30"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>referen&#269;n&#237; trasparentnost</b>&#160;- tent&#253;&#382; v&#253;raz m&#225; kdekoli v programu stejnou hodnotu
    </p>
  </body>
</html>
</richcontent>
<hook NAME="FreeNode"/>
</node>
<node TEXT="netypovan&#xe9;" ID="ID_827808909" CREATED="1328038564015" MODIFIED="1328038825734">
<font BOLD="true"/>
<node TEXT="Lisp" ID="ID_299856887" CREATED="1328038584203" MODIFIED="1328038826687">
<font BOLD="true"/>
</node>
<node TEXT="Scheme" ID="ID_338381799" CREATED="1328038589859" MODIFIED="1328038827484">
<font BOLD="true"/>
</node>
</node>
<node TEXT="typovan&#xe9;" ID="ID_973384880" CREATED="1328038572875" MODIFIED="1328038824609">
<font BOLD="true"/>
<node TEXT="Erlang" ID="ID_1990398056" CREATED="1328041544281" MODIFIED="1328041610171" HGAP="90">
<hook NAME="FreeNode"/>
<font BOLD="true"/>
</node>
<node TEXT="Haskell" ID="ID_372011865" CREATED="1328038578000" MODIFIED="1328038828296" HGAP="-170" VSHIFT="60">
<font BOLD="true"/>
<node ID="ID_1932440616" CREATED="1328044089593" MODIFIED="1328045683515" HGAP="-360" VSHIFT="-30"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Courier New">qsort [] = [] </font>
    </p>
    <p>
      <font face="Courier New">qsort (pivot:tail) = </font>
    </p>
    <p>
      <font face="Courier New">&#160;&#160;qsort left ++ [pivot] ++ qsort right </font>
    </p>
    <p>
      <font face="Courier New">&#160;&#160;where </font>
    </p>
    <p>
      <font face="Courier New">&#160;&#160;&#160;&#160;left = [y | y &lt;- tail, y &lt; pivot] </font>
    </p>
    <p>
      <font face="Courier New">&#160;&#160;&#160;&#160;right = [y | y &lt;- tail, y &gt;= pivot]</font>
    </p>
  </body>
</html>

</richcontent>
<hook NAME="FreeNode"/>
</node>
<node ID="ID_1240391674" CREATED="1328039239750" MODIFIED="1328045862531" VSHIFT="30"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>datov&#233; typy</b>
    </p>
  </body>
</html>

</richcontent>
<node ID="ID_603693898" CREATED="1328039372703" MODIFIED="1328045722937"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>&#269;&#237;sla</b>
    </p>
  </body>
</html>

</richcontent>
</node>
<node ID="ID_1608100277" CREATED="1328039362968" MODIFIED="1328045729625"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>znaky</b>
    </p>
  </body>
</html>

</richcontent>
</node>
<node ID="ID_721503839" CREATED="1328039375250" MODIFIED="1328045744500"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>booleany</b>
    </p>
  </body>
</html>

</richcontent>
</node>
<node ID="ID_1720823067" CREATED="1328039409359" MODIFIED="1328045779734"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>seznamy</b>&#160;- [0,2,4,6] nebo 0:2:4:6:[]
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node ID="ID_396488618" CREATED="1328045970515" MODIFIED="1328045985312"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>program</b>&#160;- v&#253;raz
    </p>
  </body>
</html>

</richcontent>
</node>
<node ID="ID_1031253254" CREATED="1328045850234" MODIFIED="1328046082140"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>v&#253;po&#269;et</b>&#160;- zjednodu&#353;ov&#225;n&#237; v&#253;razu dokud to jde
    </p>
  </body>
</html>

</richcontent>
</node>
<node ID="ID_1739246090" CREATED="1328044071781" MODIFIED="1328045685703" HGAP="-320" VSHIFT="80"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Courier New">fac 0 = 1 </font>
    </p>
    <p>
      <font face="Courier New">fac n = n * fac (n - 1)</font>
    </p>
  </body>
</html>

</richcontent>
<hook NAME="FreeNode"/>
</node>
</node>
</node>
</node>
<node POSITION="right" ID="ID_1353471254" CREATED="1328038009828" MODIFIED="1328039185125" HGAP="-316" VSHIFT="40"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Logick&#233; programov&#225;n&#237; </b>
    </p>
    <p>
      vyhodnocov&#225;n&#237; datab&#225;ze tvrzen&#237; a c&#237;l&#367;
    </p>
  </body>
</html>

</richcontent>
<edge COLOR="#000000" WIDTH="1"/>
<hook NAME="FreeNode"/>
<node ID="ID_1541494548" CREATED="1328038512234" MODIFIED="1328043088593" HGAP="-262" VSHIFT="-220"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Prolog</b>
    </p>
    <p>
      Program v prologu je datab&#225;ze fakt&#367; a pravidel,
    </p>
    <p>
      nad kter&#253;mi je mo&#382;no kl&#225;st dotazy formou tvrzen&#237;,
    </p>
    <p>
      u kter&#253;ch Prolog zhodnocuje jejich pravdivost
    </p>
    <p>
      (dokazatelnost z &#250;daj&#367; obsa&#382;en&#253;ch v datab&#225;zi).
    </p>
  </body>
</html>

</richcontent>
<font BOLD="false"/>
<node ID="ID_1074587969" CREATED="1328039239750" MODIFIED="1328042393265"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>datov&#233; typy</b>&#160;(termy)
    </p>
  </body>
</html>

</richcontent>
<node ID="ID_215328164" CREATED="1328039372703" MODIFIED="1328043231468"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>atom</b>&#160;- za&#269;&#237;naj&#237; mal&#253;m p&#237;smenem, &#345;et&#283;zce ('text 1')
    </p>
  </body>
</html>

</richcontent>
</node>
<node ID="ID_1926452378" CREATED="1328039362968" MODIFIED="1328042832500"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>integer</b>&#160;- p&#345;&#237;padn&#283; i floaty
    </p>
  </body>
</html>

</richcontent>
</node>
<node ID="ID_257860217" CREATED="1328039375250" MODIFIED="1328042838218"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>prom&#283;nn&#225;</b>&#160;- velk&#233; p&#237;smeno
    </p>
  </body>
</html>

</richcontent>
</node>
<node ID="ID_1034237848" CREATED="1328039409359" MODIFIED="1328042842515"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>struktura</b>&#160;- funktor + argumenty (factorial(0,1).)
    </p>
  </body>
</html>

</richcontent>
<node ID="ID_1700734712" CREATED="1328043017140" MODIFIED="1328045131484"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>seznamy</b>&#160;- [a,b,c] nebo [Za&#269;&#225;tek|T&#283;lo]
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
</node>
<node ID="ID_1091770798" CREATED="1328042425875" MODIFIED="1328042534453"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>program</b>&#160;(klauzule)
    </p>
  </body>
</html>

</richcontent>
<node ID="ID_1132337659" CREATED="1328042537328" MODIFIED="1328042811265"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>fakta</b>&#160;- p&#345;&#237;klad: divka(monika).
    </p>
  </body>
</html>

</richcontent>
</node>
<node ID="ID_1123813555" CREATED="1328042542171" MODIFIED="1328042805468"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>pravidla</b>&#160;- p&#345;&#237;klad: dcera(A,B):- rodic(B,A), divka(A).
    </p>
  </body>
</html>

</richcontent>
</node>
<node ID="ID_324042670" CREATED="1328043233640" MODIFIED="1328043339890"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>oper&#225;tory</b>&#160;- jsou ze spec.znak&#367; (+,-,*,is)
    </p>
  </body>
</html>

</richcontent>
<node TEXT=", (konjuknce) ; (disjunkce)" ID="ID_49525254" CREATED="1328045316171" MODIFIED="1328045354265"/>
<node TEXT=":- implikace (?)" ID="ID_858644443" CREATED="1328045535359" MODIFIED="1328045547593"/>
<node TEXT="is - p&#x159;i&#x159;azen&#xed;" ID="ID_1921195189" CREATED="1328043346531" MODIFIED="1328043365968"/>
<node TEXT=" = - porovn&#xe1;n&#xed;" ID="ID_1799640123" CREATED="1328043367468" MODIFIED="1328043394437"/>
<node TEXT="! - &#x159;ez, usp&#x11b;je a zmraz&#xed; v&#x161;echny vyhodnocen&#xed;,&#xa;kter&#xe9; se ud&#x11b;lali ne&#x17e; se na n&#x11b;j narazilo (vypne backtrack)" ID="ID_1957803286" CREATED="1328043409218" MODIFIED="1328045273109">
<node ID="ID_1516391982" CREATED="1328044071781" MODIFIED="1328045643515" HGAP="330" VSHIFT="-40"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Courier New">fac(0, 1).</font>
    </p>
    <p>
      <font face="Courier New">fac(X, Y):- X1 is X-1, fac(X1, Z), Y is Z*X, !.</font>
    </p>
  </body>
</html>
</richcontent>
<hook NAME="FreeNode"/>
</node>
<node ID="ID_1320122812" CREATED="1328045147062" MODIFIED="1328045208125"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Courier New">prvek(X,[X|L]):- !. </font>
    </p>
    <p>
      <font face="Courier New">prvek(X,[_|L]):- prvek(X,L).</font>
    </p>
  </body>
</html>

</richcontent>
</node>
<node ID="ID_1399962333" CREATED="1328044071781" MODIFIED="1328045276906" HGAP="330" VSHIFT="40"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Courier New">not(P):- P, !, fail. </font>
    </p>
    <p>
      <font face="Courier New">not(P).</font>
    </p>
  </body>
</html>

</richcontent>
<hook NAME="FreeNode"/>
</node>
</node>
</node>
</node>
<node TEXT="vyhodnocov&#xe1;n&#xed;" ID="ID_289312726" CREATED="1328042921296" MODIFIED="1328042934390">
<font BOLD="true"/>
<node ID="ID_1496026952" CREATED="1328039465578" MODIFIED="1328043537546"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>unifikace</b>&#160;- porovnan&#237; a p&#345;i&#345;azen&#237; hodnoty
    </p>
  </body>
</html>

</richcontent>
<font BOLD="false"/>
</node>
<node ID="ID_138299970" CREATED="1328039474484" MODIFIED="1328043631500"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>backtracking</b>&#160;- pokud prvn&#237; vyhodnocen&#237; nevyjde vr&#225;t&#237; se zp&#283;t a zkus&#237; jin&#233;
    </p>
  </body>
</html>

</richcontent>
<font BOLD="false"/>
</node>
<node TEXT="rekurze" ID="ID_1380361339" CREATED="1328039471562" MODIFIED="1328042939328">
<font BOLD="true"/>
</node>
</node>
</node>
</node>
</node>
</map>

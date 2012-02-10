<map version="0.9.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="graf.algoritmy" ID="ID_1723255651" CREATED="1283093380553" MODIFIED="1328642391828"><hook NAME="MapStyle">

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
<font BOLD="true"/>
<node TEXT="reprezentace grafu" POSITION="left" ID="ID_165237822" CREATED="1328641809640" MODIFIED="1328714946640">
<font BOLD="true"/>
<node ID="ID_1972687559" CREATED="1328641828453" MODIFIED="1328713921031"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>matice sousednosti</b>&#160;- O(|V|^2) pam&#283;ti
    </p>
    <p>
      hled&#225;n&#237; soused&#367; vrcholu: O(V)
    </p>
  </body>
</html>

</richcontent>
</node>
<node ID="ID_1151998962" CREATED="1328641970343" MODIFIED="1328713979718"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>seznamy soused&#367;</b>&#160;- O(|V|+|E|) pam&#283;ti
    </p>
    <p>
      hled&#225;n&#237; soused&#367; vrcholu: O(hrany obs.vrchol)
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="tranz.uz&#xe1;v&#x11b;r" POSITION="left" ID="ID_164098432" CREATED="1328713595546" MODIFIED="1328713609562">
<font BOLD="true"/>
<node ID="ID_1341294040" CREATED="1328713611015" MODIFIED="1328714243656"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Algoritmus (&#250;prava DFS):</b>
    </p>
    <p>
      n-kr&#225;t pustit DFS z ka&#382;d&#233;ho vrcholu
    </p>
    <p>
      a zaznamenat do matice dosa&#382;itelnosti = matice sousednosti tranz.uz&#225;v&#283;ru
    </p>
  </body>
</html>

</richcontent>
</node>
<node ID="ID_277183446" CREATED="1328645987031" MODIFIED="1328713763000"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Slo&#382;itost:</b>&#160;&#920;(V(E+V)) - jako DFS
    </p>
  </body>
</html>

</richcontent>
</node>
<node ID="ID_1333939269" CREATED="1328714259515" MODIFIED="1328714813921"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Algoritmus (&#250;prava Floyd Warshalla): </b>
    </p>
    <p>
      jako akci v cyklech d&#225;me vylep&#353;ov&#225;n&#237; matice sousedn.:
    </p>
    <p>
      Ai,j = Ai,j || Di,k &amp;&amp; Dk,j
    </p>
    <p>
      =&gt; matice sousednosti tranz.uz&#225;v&#283;ru
    </p>
  </body>
</html>

</richcontent>
</node>
<node ID="ID_1127592108" CREATED="1328714436437" MODIFIED="1328714478281"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Slo&#382;itost:</b>&#160;O(V^3) - jako FW
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node POSITION="left" ID="ID_9150523" CREATED="1328650100953" MODIFIED="1328650110328"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>toky v s&#237;t&#237;ch</b>
    </p>
  </body>
</html>

</richcontent>
<node TEXT="Ford-Fulkerson" ID="ID_834766900" CREATED="1328650656843" MODIFIED="1328650804734">
<font BOLD="true"/>
<node ID="ID_1302644860" CREATED="1328650774234" MODIFIED="1328650802921"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Algorimus:</b>
    </p>
    <p>
      f &#8592; libovoln&#253; tok, t&#345;eba v&#353;ude nulov&#253; (&#8704;e &#8712; E : f(e) &#8592; 0).
    </p>
    <p>
      Dokud &#8707; zlep&#353;uj&#237;c&#237; cesta P: vylep&#353;&#237;me f pod&#233;l P jako v d&#367;kazu v&#283;ty.
    </p>
    <p>
      Prohl&#225;s&#237;me f za maxim&#225;ln&#237; tok.
    </p>
  </body>
</html>

</richcontent>
</node>
<node ID="ID_680888038" CREATED="1328651500406" MODIFIED="1328651517515"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Slo&#382;itost:</b>&#160;O(VE^2)
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="Dinic" ID="ID_504938591" CREATED="1328650856687" MODIFIED="1328650869859">
<font BOLD="true"/>
<node ID="ID_81239715" CREATED="1328651032125" MODIFIED="1328651105062"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Algoritmus:</b>
    </p>
    <p>
      f &#8592; nulov&#253; tok.
    </p>
    <p>
      Sestroj&#237;me s&#237;&#357; rezerv R, vynech&#225;me hrany s nulovou rezervou.
    </p>
    <p>
      l &#8592; d&#233;lka nejkrat&#353;&#237; cesty z &#8594; s v R.
    </p>
    <p>
      Kdy&#382; l = &#8734;, tak skon&#269;&#237;me.
    </p>
    <p>
      Sestroj&#237;me pro&#269;i&#353;t&#283;nou s&#237;&#357; C, a to n&#225;sleduj&#237;c&#237;m zp&#367;sobem:
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Spust&#237;me BFS algoritmus ze zdroje.
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;BFS n&#225;m rozd&#283;l&#237; uzly do vrstev, vyhod&#237;me hrany za spot&#345;ebi&#269;em a slep&#233; uli&#269;ky.
    </p>
    <p>
      g &#8592; blokuj&#237;c&#237; tok v C.
    </p>
    <p>
      Zlep&#353;&#237;me tok f podle g a jdeme na bod 3.
    </p>
  </body>
</html>

</richcontent>
<node ID="ID_1302198067" CREATED="1328651114546" MODIFIED="1328651152031"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Algoritmus hled&#225;n&#237; blokuj&#237;c&#237;ho toku</b>
    </p>
    <p>
      g &#8592; nulov&#253; tok.
    </p>
    <p>
      Dokud &#8707;z &#8594; s cesta P v pro&#269;i&#353;t&#283;n&#233; s&#237;ti C:
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#949; &#8592; min_e&#8712;P (c(e) &#8722; f(e)).
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#8704;e &#8712; P : g(e) &#8592; g(e)+&#949;, pokud g(e) vzroste na r(e), tak sma&#382;eme hranu e.
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Do&#269;ist&#237;me s&#237;&#357; t&#237;m, &#382;e odstran&#237;me slep&#233; uli&#269;ky, kter&#233; mohly vzniknout smaz&#225;n&#237;m hrany e.
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node ID="ID_1309740056" CREATED="1328651161328" MODIFIED="1328651244781"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Slo&#382;itost </b>O(N^2 M)
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="Goldberg" ID="ID_1573921109" CREATED="1328651248234" MODIFIED="1328651254093">
<font BOLD="true"/>
<node ID="ID_1678178077" CREATED="1328651295765" MODIFIED="1328651367640"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Algoritmus:</b>
    </p>
    <p>
      &#8704;v &#8712; V : h(v) &#8592; 0 (v&#353;em vrchol&#367;m nastav&#237;me po&#269;&#225;te&#269;n&#237; v&#253;&#353;ku nula).
    </p>
    <p>
      h(z) &#8592; N (zdroj zvedneme do v&#253;&#353;ky N).
    </p>
    <p>
      &#8704;e &#8712; E : f(e) &#8592; 0 (po hran&#225;ch na po&#269;&#225;tku nenech&#225;me prot&#233;kat nic).
    </p>
    <p>
      &#8704;zu &#8712; E : f(zu) &#8592; c(zu) (ze zdroje pust&#237;me maxim&#225;ln&#237; mo&#382;nou vlnu).
    </p>
    <p>
      Dokud &#8707;u &#8712; V \ {z, s}, f&#916;(u) &gt; 0:
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Pokud &#8707;uv &#8712; E, r(uv) &gt; 0 a h(u) &gt; h(v): p&#345;evedeme p&#345;ebytek po hran&#283; uv.
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;V opa&#269;n&#233;m p&#345;&#237;pad&#283; zvedneme u.
    </p>
    <p>
      Vr&#225;t&#237;me tok f jako v&#253;sledek.
    </p>
  </body>
</html>

</richcontent>
</node>
<node ID="ID_1304172263" CREATED="1328651389109" MODIFIED="1328651400015"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Slo&#382;itost: </b>O(N^3)
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
</node>
<node POSITION="left" ID="ID_72457806" CREATED="1328649236953" MODIFIED="1328650015359" VSHIFT="10"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>min.kostra </b>
    </p>
    <p>
      |V|=n, |E|=m
    </p>
  </body>
</html>

</richcontent>
<node TEXT="Jarn&#xed;k&#x16f;v" ID="ID_307967452" CREATED="1328649569750" MODIFIED="1328650026093" VSHIFT="-10">
<font BOLD="true"/>
<node ID="ID_1775079974" CREATED="1328649408968" MODIFIED="1328649583531" VSHIFT="100"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Algoritmus</b>
    </p>
    <p>
      -na zacatku vybereme libovolny vrchol v0 a oznacime ho jako komponentu C, ostatn&#237; vrcholy oznacime jako jednovrcholov&#233; komponenty
    </p>
    <p>
      -pridame hranu uv do komponenty pokud u&#8712;C a v&#8713;C tak, aby uv byla minimalni (pozirame ostatn&#237; komponenty)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;-opakujeme dokud nem&#225;me v&#353;echny vrcholy v C
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_304911396" CREATED="1328649509906" MODIFIED="1328649519937"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Spr&#225;vnost:</b>&#160;-algoritmus p&#345;ida v&#382;dy jeden vrchol do C, proto se po max |V| kroc&#237;ch zastav&#237;
    </p>
    <p>
      -graf v C je strom, proto&#382;e poka&#382;d&#233; p&#345;id&#225;v&#225;me list k uz existuj&#237;c&#237;mu stromu, a proto&#382;e m&#225; n vrchol&#367; je kostra
    </p>
    <p>
      -pokud m&#225;me n&#283;jak&#253; &#345;ez v p&#367;vodn&#237;m grafu pak jeho nejleh&#269;&#237; hrana pat&#345;&#237; do min. kostry (d&#367;kaz lehk&#253;), no a v&#353;echny hrany mezi komponentou C a zbytkem grafu tvo&#345;&#237; &#345;ez
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_939553229" CREATED="1328649551562" MODIFIED="1328714853562"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Slo&#382;itost:</b>&#160;-je vhodn&#233; uchov&#225;vat hrany vedouc&#237; z komponenty C v prioritn&#237; front&#283; Q (hald&#283;, minim&#225;ln&#237; pak najdeme jednodu&#353;e), kdy&#382; do C p&#345;id&#225;me nov&#253; vrchol v, odstran&#237;me hrany, kter&#233; do n&#283;j vedou z komponenty C a p&#345;id&#225;me hrany kter&#233; vedou z v ven z komponenty
    </p>
    <p>
      Pam&#283;&#357; - zalezi na datove strukture pouzite pro Q, pokud pouzijeme haldu je <b>O(E log V)</b>
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="Kruskal&#x16f;v" ID="ID_974707909" CREATED="1328649876515" MODIFIED="1328714768046" VSHIFT="-50">
<font BOLD="true"/>
<node ID="ID_1489453028" CREATED="1328649890609" MODIFIED="1328649910656"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Algoritmus</b>
    </p>
    <p>
      -seradime hrany podle ohodnoceni ( O(m log n) )
    </p>
    <p>
      -pak je od nejmensi pridavame do grafu F, pokud je graf F+hrana acyklicky
    </p>
  </body>
</html>

</richcontent>
</node>
<node ID="ID_456910006" CREATED="1328649928140" MODIFIED="1328649940078"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Spr&#225;vnost:</b>&#160;zastavi se po m iterac&#237;ch, indukc&#237; dok&#225;&#382;eme &#382;e F je podgraf min.kostry:
    </p>
    <p>
      pr&#225;zdn&#233; F je podgraf &#269;ehokoli, ka&#382;d&#225; hrana co p&#345;id&#225;me je minim. v &#345;ezu odd&#283;luj&#237;c&#237;m F od zbytku grafu, naopak ty co nep&#345;id&#225;me nejsou z kostry proto&#382;e by v F tvo&#345;ili kru&#382;nici
    </p>
  </body>
</html>

</richcontent>
</node>
<node ID="ID_684012380" CREATED="1328649940875" MODIFIED="1328714861796"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Slo&#382;itost:</b>&#160;t&#345;&#237;d&#283;n&#237;: O(m log m) + z&#225;le&#382;&#237; na datov&#233; struktu&#345;e komponent souvislosti: po&#345;ebujete d&#283;lat m*Find(jsou dva vrcholy v t&#233;&#382;e komponent&#283;) a (n-1)*Union(spojit 2 komp.do 1)
    </p>
    <p>
      uchov&#225;v&#225;n&#237; v oby&#269;. Poli: Find O(1) Union O(n) celkem O(m log m + n^2),
    </p>
    <p>
      zako&#345;en&#283;n&#233; stromy komponent souvislosti: Find O(m log n) Union O(n log n) celkem <b>O(E log V)</b>.
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node ID="ID_775630833" CREATED="1328649597843" MODIFIED="1328649608703"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Bor&#367;vk&#367;v</b>
    </p>
  </body>
</html>

</richcontent>
<node ID="ID_1536731343" CREATED="1328649637015" MODIFIED="1328649683281"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Algoritmus</b>
    </p>
    <p>
      -graf F napln&#237;me vrcholy V(G)
    </p>
    <p>
      -dokud m&#225; F &gt; 1 komponentu
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;-&#8704; komponentu F:
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;-p&#345;idejme do F nejlevn&#283;j&#353;&#237; hranu sm&#283;&#345;uj&#237;c&#237; do jin&#233; komponenty
    </p>
  </body>
</html>

</richcontent>
</node>
<node ID="ID_1421624997" CREATED="1328649694250" MODIFIED="1328649722875"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Spr&#225;vnost:</b>&#160;hrany mezi &#8704; komponentou a zbytkem grafu tvo&#345;&#237; &#345;ez, tak&#382;e podle &#345;ezov&#233;ho lemmatu hrany p&#345;idan&#233; do F jsou sou&#269;&#225;st&#237; min.kostry, zastav&#237; se a&#382; bude jenom jedna komponenta
    </p>
  </body>
</html>

</richcontent>
</node>
<node ID="ID_871184658" CREATED="1328649753328" MODIFIED="1328649873578"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Slo&#382;itost:</b>&#160;po k iterac&#237;ch maj&#237; v&#353;echny komponenty minim&#225;ln&#283; 2^k vrchol&#367; (slu&#269;uj&#237; se se sousedn&#237;, tak&#382;e se velikost komponent min.zdvojn&#225;sob&#237;)&#160;&#160;=&gt; nejpozd&#283;ji po log_2 n dos&#225;hne velikost komponenty po&#269;tu vrchol&#367; a zastav&#237; se
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
</node>
<node POSITION="right" ID="ID_1800578930" CREATED="1328644324687" MODIFIED="1328646672484" VSHIFT="-10"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>do &#353;&#237;&#345;ky/B</b>reath <b>F</b>irst <b>S</b>earch
    </p>
  </body>
</html>

</richcontent>
<font BOLD="false"/>
<node ID="ID_585521398" CREATED="1328644600156" MODIFIED="1328645786453"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font face="SansSerif">Algoritmus:</font></b>
    </p>
    <p>
      <font face="SansSerif" size="2">BFS( V - vrcholy, E - hrany, s - startovac&#237; vrchol ){ </font>
    </p>
    <p>
      <font face="SansSerif" size="2">&#160;&#160;obarvi vrcholy b&#237;le, nastav jim nekone&#269;nou vzd&#225;lenost od s a p&#345;edch&#367;dce NULL; </font>
    </p>
    <p>
      <font face="SansSerif" size="2">&#160;&#160;dej do fronty vrchol s; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="SansSerif" size="2">&#160;&#160;while( nepr&#225;zdn&#225; fronta ){ </font>
    </p>
    <p>
      <font face="SansSerif" size="2">&#160;&#160;&#160;&#160;vyber z fronty vrchol v; </font>
    </p>
    <p>
      <font face="SansSerif" size="2">&#160;&#160;&#160;&#160;foreach( v&#353;echny b&#237;le obarven&#233; sousedy v = u ){ </font>
    </p>
    <p>
      <font face="SansSerif" size="2">&#160;&#160;&#160;&#160;&#160;&#160;&#160;obarvi u &#353;ed&#283; a nastav mu vzd&#225;lenost d(v) + 1 a p&#345;edch&#367;dce v; </font>
    </p>
    <p>
      <font face="SansSerif" size="2">&#160;&#160;&#160;&#160;&#160;&#160;&#160;dej vrchol u do fronty; </font>
    </p>
    <p>
      <font face="SansSerif" size="2">&#160;&#160;&#160;&#160;} </font>
    </p>
    <p>
      <font face="SansSerif" size="2">&#160;&#160;&#160;&#160;v p&#345;ebarvi na &#269;erno a vyho&#271; z fronty. </font>
    </p>
    <p>
      <font face="SansSerif" size="2">&#160;&#160;} </font>
    </p>
    <p>
      <font face="SansSerif" size="2">}</font>
    </p>
  </body>
</html>

</richcontent>
<node TEXT="fronta FIFO" ID="ID_1588256414" CREATED="1328644734171" MODIFIED="1328645262937" HGAP="200" VSHIFT="-50">
<icon BUILTIN="idea"/>
<hook NAME="FreeNode"/>
</node>
</node>
<node ID="ID_715452616" CREATED="1328644768921" MODIFIED="1328714076937"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Slo&#382;itost: </b>O(E+V) - seznam soused&#367; - ka&#382;d&#253; vrchol testuje 2x pro ka&#382;dou hranu,do fronty se d&#225;v&#225; 1x a obarven&#237; se m&#283;n&#237; 2x
    </p>
    <p>
      O(V^2) - matice sousednosti
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node POSITION="right" ID="ID_27543091" CREATED="1328645706093" MODIFIED="1328646669781" VSHIFT="-10"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>do hloubky</b>/<b>D</b>epth <b>F</b>irst <b>S</b>earch
    </p>
  </body>
</html>

</richcontent>
<node ID="ID_410867859" CREATED="1328645738734" MODIFIED="1328645821093"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Algoritmus (rekurzivn&#237; verze):</b>
    </p>
    <p>
      <font size="2">DFS(v - vrchol){ </font>
    </p>
    <p>
      <font size="2">&#160;&#160;ozna&#269; v jako nav&#353;t&#237;ven&#253;; </font>
    </p>
    <p>
      <font size="2">&#160;&#160;foreach( v&#353;echny nenav&#353;t&#237;ven&#233; sousedy v = u ) </font>
    </p>
    <p>
      <font size="2">&#160;&#160;&#160;&#160;&#160;DFS( u ); </font>
    </p>
    <p>
      <font size="2">}</font>
    </p>
  </body>
</html>

</richcontent>
<node ID="ID_652465134" CREATED="1328645823531" MODIFIED="1328645849640"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Algoritmus (z&#225;sobn&#237;kov&#225; verze):</b>
    </p>
    <p>
      vypad&#225; stejn&#283; jako BFS (m&#237;sto fronty je z&#225;sobn&#237;k).
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node ID="ID_347744528" CREATED="1328645987031" MODIFIED="1328714107937" VSHIFT="-10"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Slo&#382;itost:</b>&#160;O(E+V) - ka&#382;d&#253; vrchol a hranu vezme do ruky jenom jednou
    </p>
    <p>
      O(V^2) - matice sousednosti
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="topologick&#xe9; t&#x159;&#xed;d&#x11b;n&#xed;" POSITION="right" ID="ID_232770484" CREATED="1328646216406" MODIFIED="1328648713234" VSHIFT="-10">
<font BOLD="true"/>
<node ID="ID_1866688497" CREATED="1328646644812" MODIFIED="1328646664453" VSHIFT="60"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Definice:</b>&#160;M&#225;me orientovan&#253; graf G s |V| vrcholy a chceme o&#269;&#237;slovat vrcholy &#269;&#237;sly 1 a&#382; |V| tak, aby v&#353;echny hrany vedly z vrcholu s men&#353;&#237;m &#269;&#237;slem do vrcholu s v&#283;t&#353;&#237;m &#269;&#237;slem, tedy pro ka&#382;dou hranu e = (vi, vj) plat&#237; i &lt; j. P&#345;edstavme si ho jako srovn&#225;n&#237; vrchol&#367; grafu na p&#345;&#237;mku tak, aby &quot;&#353;ipky&quot; vedly pouze zprava doleva.
    </p>
  </body>
</html>

</richcontent>
</node>
<node ID="ID_700674604" CREATED="1328646328968" MODIFIED="1328646404015"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Algoritmus:</b>&#160;Modifikace <b>DFS</b>. Nen&#237; t&#345;eba ani graf testovat na cykly, algoritmus toto objev&#237;. Uspo&#345;&#225;d&#225;n&#237; podle klesaj&#237;c&#237;ch &#269;as&#367; opu&#353;t&#283;n&#237;&#160;&#160;vrchol&#367; je topologick&#233;:
    </p>
    <p>
      <font size="2">topol( v &#8211; vrchol ) { </font>
    </p>
    <p>
      <font size="2">&#160;global t; <i>// &#269;as opu&#353;t&#283;n&#237;, inici&#225;ln&#237; hodnota 0</i>&#160; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="2">&#160;ozna&#269; v jako nav&#353;t&#237;ven&#253;; </font>
    </p>
    <p>
      <font size="2">&#160;foreach ( hranu (v,u) ) { </font>
    </p>
    <p>
      <font size="2">&#160;&#160;if ( u je nav&#353;t&#237;ven&#253;, ale ne opu&#353;t&#283;n&#253; ) { </font>
    </p>
    <p>
      <font size="2">&#160;&#160;&#160;chyba &#8211; cyklus; </font>
    </p>
    <p>
      <font size="2">&#160;&#160;&#160;return; </font>
    </p>
    <p>
      <font size="2">&#160;&#160;} </font>
    </p>
    <p>
      <font size="2">&#160;&#160;else if ( u nen&#237; nav&#353;t&#237;ven&#253; ) </font>
    </p>
    <p>
      <font size="2">&#160;&#160;topol( u ); </font>
    </p>
    <p>
      <font size="2">&#160;} </font>
    </p>
    <p>
      <font size="2">&#160;out(v):=t; <i>// ozna&#269; v jako opu&#353;t&#283;n&#253; v &#269;ase t</i>&#160; </font>
    </p>
    <p>
      <font size="2">&#160;t = t + 1; </font>
    </p>
    <p>
      <font size="2">}</font>
    </p>
  </body>
</html>

</richcontent>
</node>
<node ID="ID_98319058" CREATED="1328645987031" MODIFIED="1328646703250"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Slo&#382;itost:</b>&#160;&#920;(|E|+|V|) - jako DFS, proto&#382;e v&#353;echny kroky prov&#225;d&#283;n&#233; v r&#225;mci nav&#353;t&#237;ven&#237; 1 vrcholu vy&#382;aduj&#237; jen konstatn&#237; po&#269;et operac&#237;
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="po&#x10d;&#xed;t&#xe1;n&#xed; komponent souvislosti" POSITION="right" ID="ID_427771160" CREATED="1328646888171" MODIFIED="1328648708953" VSHIFT="-10">
<font BOLD="true"/>
<node ID="ID_1953927714" CREATED="1328646918453" MODIFIED="1328646992421"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Definice:</b>&#160;komponenta grafu je souvisl&#225; pokud pro ka&#382;d&#283; dva vrcholy mezi nimi ex.cesta
    </p>
  </body>
</html>

</richcontent>
</node>
<node ID="ID_1339725401" CREATED="1328646993859" MODIFIED="1328647070890"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Algoritmus: </b>
    </p>
    <p>
      pro&#160;ka&#382;d&#253; vrchol:
    </p>
    <p>
      &#160;&#160;&#160;&#160;-kdy&#382; nen&#237; nav&#353;t&#237;ven&#253; spus&#357; na n&#283;m DFS
    </p>
    <p>
      &#160;&#160;&#160;&#160;-a zvy&#353; po&#269;&#237;tadlo komponent
    </p>
  </body>
</html>

</richcontent>
</node>
<node ID="ID_1144795351" CREATED="1328645987031" MODIFIED="1328647089828"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Slo&#382;itost:</b>&#160;&#920;(|E|+|V|) - jako DFS
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="hled&#xe1;n&#xed; euler.tahu" POSITION="right" ID="ID_691570488" CREATED="1328702253000" MODIFIED="1328702265796">
<font BOLD="true"/>
<node ID="ID_785324604" CREATED="1328702270156" MODIFIED="1328702660640"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Algoritmus:</b>
    </p>
    <p>
      Euler(v):
    </p>
    <p>
      &#160;&#160;&#160;&#160;if stupe&#328; v lich&#253;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;vypi&#353;(&quot;lich&#253; stupe&#328; - neex.euler.tah&quot;)
    </p>
    <p>
      &#160;&#160;&#160;&#160;while &#8707; nepro&#353;l&#225; hrana vw do
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;ozna&#269; hranu vw
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Euler(w)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;vypi&#353;(v)
    </p>
  </body>
</html>

</richcontent>
</node>
<node ID="ID_610065300" CREATED="1328645987031" MODIFIED="1328647089828"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Slo&#382;itost:</b>&#160;&#920;(|E|+|V|) - jako DFS
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node POSITION="right" ID="ID_1490345974" CREATED="1328647903078" MODIFIED="1328647913234"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>nejkrat&#353;&#237; cesty</b>
    </p>
  </body>
</html>

</richcontent>
<node TEXT="Dijkstra" ID="ID_1722731185" CREATED="1328647918531" MODIFIED="1328648706687" VSHIFT="10">
<font BOLD="true"/>
<node ID="ID_291531153" CREATED="1328647949984" MODIFIED="1328648271281"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Algoritmus:</b>&#160;stavy vrcholu: Neviden, Viden, Hotov
    </p>
    <p>
      D(*):= &#8734;, D(s):=0
    </p>
    <p>
      Z(*):=N, Z(s):=V
    </p>
    <p>
      while &#8707;v: Z(v) = V
    </p>
    <p>
      &#160;&#160;&#160;&#160;vybereme takov&#233; v : Z(v) = V, D(v) = min (<i>zde z&#225;le&#382;&#237; na pou&#382;it&#233; dat. struktu&#345;e</i>)
    </p>
    <p>
      &#160;&#160;&#160;&#160;Z(v) = H
    </p>
    <p>
      &#160;&#160;&#160;&#160;for &#8704;w : (v,w)&#8712;E(G)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;D(w):=min(D(w),D(w) + l(v,w))
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;if Z(w)=N &#8658; Z(w):=V
    </p>
  </body>
</html>

</richcontent>
</node>
<node ID="ID_404037604" CREATED="1328648311796" MODIFIED="1328648979296"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Slo&#382;itost: </b>z&#225;le&#382;&#237; na datove strukture pouzite pro &#8704;v: Z(v)=V,&#160; pokud pouzijeme pole tak je O(|V|^2) pokud fibonacciho haldu je O(|V| log |V| +|E|)
    </p>
    <p>
      Funguje pouze s nez&#225;porn&#253;mi hranami
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="Bellman-Ford" ID="ID_967487430" CREATED="1328648379203" MODIFIED="1328648703015" VSHIFT="10">
<font BOLD="true"/>
<node ID="ID_364621082" CREATED="1328648404937" MODIFIED="1328648536828"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Algoritmus:</b>
    </p>
    <p>
      D(*):= &#8734;, D(s):=0
    </p>
    <p>
      cykluj
    </p>
    <p>
      &#160;&#160;&#160;&#160;for &#8704;v&#8712;V
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;prozkoumej(v)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(koukne se, jestli nejde vylep&#353;it cestu do soused&#367; v)
    </p>
    <p>
      dokud se n&#283;jak&#233; D(. . .) m&#283;n&#237;
    </p>
  </body>
</html>

</richcontent>
</node>
<node ID="ID_224329413" CREATED="1328648689968" MODIFIED="1328649064093"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Slo&#382;itost:</b>&#160;2 vno&#345;en&#233; cykly 1..n a 1..m &#8594; O(|V|*|E|)
    </p>
    <p>
      Funguje i se z&#225;porn&#253;my hranami, graf nesm&#237; m&#237;t cykly z&#225;porn&#233; d&#233;lky (d&#225; se do n&#283;j dopsat detekce)
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node ID="ID_609578605" CREATED="1328648762921" MODIFIED="1328648769062"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Floyd-Warshall</b>
    </p>
  </body>
</html>

</richcontent>
<node ID="ID_1927116719" CREATED="1328648782312" MODIFIED="1328648867000"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Algoritmus:</b>
    </p>
    <p>
      &#8704;i,j: Di,j := l(vi, vj), Di,i := 0
    </p>
    <p>
      for k = 1 to n
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;for i = 1 to n
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;for j = 1 to n
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Di,j = min(Di,j , Di,k + Dk,j)
    </p>
  </body>
</html>

</richcontent>
</node>
<node ID="ID_187117131" CREATED="1328648877312" MODIFIED="1328714508750"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Slo&#382;itost:</b>&#160;3 vno&#345;en&#233; cykly 1..n &#8594; O(V^3)
    </p>
    <p>
      Nejkrat&#353;&#237; cesty pro v&#353;echny dvojice vrchol&#367;, funguje se z&#225;porn&#253;my hranami, graf nesm&#237; m&#237;t cykly z&#225;porn&#233; d&#233;lky (projev&#237; se ale na matici na diagon&#225;le &#8211; detekce cykl&#367;)
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
</node>
</node>
</map>

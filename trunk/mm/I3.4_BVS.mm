<map version="0.9.0" dialect="freeplane 1.2.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node ID="ID_1723255651" CREATED="1283093380553" MODIFIED="1328538436906"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>BVS </b>- uzel m&#225; dva syny
    </p>
    <p>
      levy podstrom obsahuje mensi nez klic
    </p>
    <p>
      pravy podstrom vetsi
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
<node POSITION="left" ID="ID_346656067" CREATED="1328472518571" MODIFIED="1328640962906" HGAP="-180" VSHIFT="510"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>haldy</b>&#160;- stromov&#225; struktura kde plat&#237;:
    </p>
    <p>
      otec&#8805;syn (max-heap)
    </p>
    <p>
      otec&#8804;syn (min-heap)
    </p>
  </body>
</html>
</richcontent>
<node TEXT="bin&#xe1;rn&#xed; haldy" ID="ID_1023307323" CREATED="1328472534544" MODIFIED="1328539783140">
<font BOLD="true"/>
<node ID="ID_510185877" CREATED="1328539041515" MODIFIED="1328640966125" HGAP="-130" VSHIFT="-160">
<icon BUILTIN="idea"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Implemetace v poli:</b>&#160;ko&#345;en na pozici 0 potomci v&#382;dy na 2n+1 a 2n+2
    </p>
    <p>
      rodi&#269;e na ceil(n/2)-1
    </p>
  </body>
</html>
</richcontent>
<hook NAME="FreeNode"/>
</node>
<node ID="ID_211592084" CREATED="1328539597468" MODIFIED="1328539670671"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Pravidla:</b>&#160;je perfektn&#283; vyv&#225;&#382;en&#253;m bin&#225;rn&#237;m stromem, nebo pokud je posledn&#237; &#250;rove&#328; stromu nekompletn&#237;, uzly pln&#237; strom zleva doprava.
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1369458460" CREATED="1328539865125" MODIFIED="1328539916421"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Hloubka:</b>&#160;z&#345;ejm&#283; max (log n)+1
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_212900255" CREATED="1328539918531" MODIFIED="1328539941828"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Insert</b>
    </p>
  </body>
</html>
</richcontent>
<node ID="ID_1439233183" CREATED="1328539942468" MODIFIED="1328540517609"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>p&#345;id&#225;m na konec haldy</b>&#160;a kdy&#382; nesed&#237; prohazujeme s rodi&#269;em
    </p>
    <p>
      (tedy <b>posouv&#225;m nahoru</b>) O(log n)
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Delete" ID="ID_521270924" CREATED="1328540036015" MODIFIED="1328540040750">
<font BOLD="true"/>
<node ID="ID_1145390553" CREATED="1328540075171" MODIFIED="1328540522734"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      odeberu, <b>nahrad&#237;m posledn&#237;m prvkem</b>&#160;a pokud nesed&#237; prohazuji s potomky kte&#345;&#237; poru&#353;uj&#237; vlastnost v&#237;c
    </p>
    <p>
      (tedy <b>posouv&#225;m dol&#367;</b>) O(log n)
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node ID="ID_1785548591" CREATED="1328540557703" MODIFIED="1328540590859"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Vytvo&#345;en&#237; haldy </b>
    </p>
    <p>
      z n prvk&#367;
    </p>
  </body>
</html>
</richcontent>
<node TEXT="d&#xe1; se v O(n)" ID="ID_1848064858" CREATED="1328540715265" MODIFIED="1328540750812"/>
</node>
</node>
<node ID="ID_248980528" CREATED="1328472554708" MODIFIED="1328553591848"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>binomi&#225;ln&#237; haldy</b>
    </p>
  </body>
</html>
</richcontent>
<node ID="ID_1507412825" CREATED="1328553595058" MODIFIED="1328559447926"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Pravidla:</b>&#160;les binomi&#225;ln&#237;ch strom&#367; - ka&#382;d&#253; &#345;&#225;d max.jednou,
    </p>
    <p>
      bim.strom &#345;&#225;du i se skl&#225;d&#225; z ko&#345;ene a i syn&#367; ze strom&#367; 0 a&#382; i-1 - chov&#225; se jako mal&#225; halda
    </p>
    <p>
      -pou&#382;&#237;v&#225; se ukazatelna strom s min.prvkem O(1)
    </p>
  </body>
</html>
</richcontent>
<hook URI="../bc/informatika/algoritmy_a_ds/obrazky/binomial_heap.png" SIZE="0.5816108" NAME="ExternalObject"/>
</node>
<node TEXT="umo&#x17e;&#x148;uje rychlou implemetaci Insert O(log n) (amotizovan&#x11b; O(1)) a Merge (dvou hald) O(log n)" ID="ID_1756586027" CREATED="1328553451999" MODIFIED="1328559320592"/>
</node>
<node ID="ID_637070135" CREATED="1328472577070" MODIFIED="1328559356098"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>fibonacciho haldy</b>
    </p>
  </body>
</html>
</richcontent>
<node ID="ID_793396229" CREATED="1328559358641" MODIFIED="1328560624641"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Pravidla:</b>&#160;&#160;les haldov&#253;ch strom&#367;, ka&#382;d&#253; uzel haldy s n prvky m&#225; podstrom velikosti min. F_n+2 m&#225; stupe&#328; max log n
    </p>
    <p>
      -p&#345;i odeb&#237;r&#225;n&#237; prvk&#367; lze oddelit z neko&#345;enov&#233;ho prvku max 1 syna, jinak se oddeli cely uzel do noveho stromu
    </p>
    <p>
      -p&#345;i odebr&#225;n&#237; minima se po&#269;et strom&#367; naopak sni&#382;uje - spojuj&#237; se
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="vych&#xe1;z&#xed; z binomi&#xe1;ln&#xed;ch" ID="ID_890297760" CREATED="1328559459581" MODIFIED="1328559461771"/>
<node TEXT="Insert je amortizovan&#x11b; O(1) Delete O(log n)" ID="ID_1302546842" CREATED="1328560717406" MODIFIED="1328560762992"/>
</node>
</node>
<node POSITION="right" ID="ID_1696027511" CREATED="1328536783484" MODIFIED="1328537077718"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>(prav&#225;/lev&#225;) rotace</b>&#160;- pomocn&#233; operace pro vyva&#382;ov&#225;n&#237;, provediteln&#233; v konst.&#269;ase
    </p>
  </body>
</html>
</richcontent>
<hook URI="../bc/informatika/algoritmy_a_ds/obrazky/tree_rotation2.png" SIZE="0.43422493" NAME="ExternalObject"/>
</node>
<node TEXT="AVL stromy" POSITION="right" ID="ID_1575641318" CREATED="1328472497915" MODIFIED="1328534948609" VSHIFT="-30">
<font BOLD="true"/>
<node ID="ID_1348479134" CREATED="1328534133609" MODIFIED="1328537622640"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p style="margin-bottom: 0cm">
      <font color="#000000" size="3"><b>Pravidla: </b>- </font><font face="Symbol, serif" color="#000000" size="3">&#61474;</font><font color="#000000" size="3">uzel plat&#237;: <b>v&#253;&#353;ka</b>&#160; jeho<b>&#160;lev&#233;ho&#160;a prav&#233;ho podstromu se li&#353;&#237; nejv&#253;&#353;e&#160;o 1</b>, uchov&#225;v&#225;me si v uzlu o tom info {-1,0,1}</font>
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1050859832" CREATED="1328534133609" MODIFIED="1328537843421"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p style="margin-bottom: 0cm">
      <font color="#000000" size="3"><b>Hloubka: </b>a0=0,a1=1,a2=2... pro k &#8805; 2: </font>
    </p>
    <p style="margin-bottom: 0cm">
      <font color="#000000" size="3">(min.po&#269;et vrchol&#367; v hloubce k)=a<sub>k</sub>=1+a<sub>n-1</sub>+a<sub>k-2</sub>&#160;&gt;2<sup>k-1</sup>/2+2<sup>k-2</sup>/2= 2<sup>k</sup>/2 (2<sup>-1/2</sup>+ 2<sup>-1</sup>)&gt; 2<sup>k</sup>/2 na ka&#382;d&#233; hladin&#283; je min.exponenci&#225;ln&#283; vrchol&#367; =&gt; hloubka O(log n)</font>
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_761318360" CREATED="1328534133609" MODIFIED="1328538648000"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p style="margin-bottom: 0cm">
      <font color="#000000" size="3"><b>Insert</b>&#160; </font>
    </p>
    <p style="margin-bottom: 0cm">
      <font color="#000000" size="3">(max 2 rot.)</font>
    </p>
  </body>
</html>
</richcontent>
<node TEXT="- postupujeme od nov&#x11b; p&#x159;idan&#xe9;ho uzlu sm&#x11b;rem nahoru a cestou opravujeme balance uzl&#x16f; podle hloubky podstrom&#x16f;" ID="ID_842056782" CREATED="1328534149468" MODIFIED="1328534795562" VSHIFT="50"/>
<node ID="ID_140214597" CREATED="1328534133609" MODIFIED="1328538168406"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p style="margin-bottom: 0cm">
      <font size="3" color="#000000">- pokud se balance uzlu zm&#283;nila na 2 nebo &#8211;2 (siln&#283; nevyv&#225;&#382;en&#253; vrchol) - &gt; je nutn&#225; reorganizace stromu &#8230; operace rotace (LR a RL rotace jde brat jako jednu)</font>
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1504042381" CREATED="1328534133625" MODIFIED="1328538654421"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p style="margin-bottom: 0cm">
      <font size="3" color="#000000">- zrotovan&#253; podstrom m&#225; stejnou v&#253;&#353;ku jako p&#367;vodn&#237;, tak&#382;e nen&#237; pot&#345;eba postupovat d&#225;le nahoru ke ko&#345;eni stromu (<b>tzn. rotace 2x a dost</b>) </font>
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_972238556" CREATED="1328534133625" MODIFIED="1328534133625"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p style="margin-bottom: 0cm">
      <font size="3" color="#000000">- &#269;asov&#225; slo&#382;itost je nejv&#253;&#353;e rovna v&#253;&#353;ce stromu, tzn. O(log N)</font>
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node ID="ID_1856167236" CREATED="1328534133625" MODIFIED="1328537644109" VSHIFT="-10"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p style="margin-bottom: 0cm">
      <font color="#000000" size="3"><b>Delete </b>(m&#367;&#382;e m&#237;t </font>
    </p>
    <p style="margin-bottom: 0cm">
      <font color="#000000" size="3">rotace a&#382; do ko&#345;ene)</font>
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Find,Insert,Delete v&#x17e;dy v O(log n)" ID="ID_1314286557" CREATED="1328564785299" MODIFIED="1328564823572"/>
</node>
<node TEXT="RB stromy" POSITION="right" ID="ID_874391020" CREATED="1328472505054" MODIFIED="1328534949937">
<font BOLD="true"/>
<node ID="ID_613900508" CREATED="1328534642734" MODIFIED="1328534785468" HGAP="30" VSHIFT="20"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p style="margin-bottom: 0cm">
      <b>Pravidla</b>:
    </p>
  </body>
</html>
</richcontent>
<node ID="ID_1254001462" CREATED="1328534661500" MODIFIED="1328536636968" VSHIFT="20"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      - <b>ko&#345;en</b>&#160;(a <b>extern&#237; vrcholy</b>)&#160;jsou <b>&#269;ern&#233;</b>
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1779147374" CREATED="1328534642734" MODIFIED="1328535174390"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p style="margin-bottom: 0cm">
      - <b>otec</b>&#160;<font color="#ff0000"><b>&#269;erven&#233;ho</b></font>&#160;uzlu je <b>&#269;ern&#253;</b>&#160;a jeho <b>synov&#233;</b>&#160;jsou <b>&#269;ern&#237;</b>
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_17537509" CREATED="1328534642734" MODIFIED="1328535205375"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p style="margin-bottom: 0cm">
      - Na cest&#283; <b>od ko&#345;ene do lib. uzlu</b>&#160;s jedn&#237;m nebo &#382;&#225;dn&#253;m synem je <b>stejn&#253; po&#269;et &#269;ern&#253;ch</b>&#160;uzl&#367;
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node ID="ID_566812150" CREATED="1328534642734" MODIFIED="1328534717578"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p style="margin-bottom: 0cm">
      <b>Hloubka: </b><span style="font-weight: normal">k-po&#269;.&#269;ern&#253;ch vrchol&#367;,n-po&#269;et vrchol&#367; 2</span><sup><span style="font-weight: normal">k</span></sup><span style="font-weight: normal">-1 &#8804; n &#8804; 2</span><sup><span style="font-weight: normal">2k</span></sup><span style="font-weight: normal">-1 </span>
    </p>
    <p style="margin-bottom: 0cm">
      <span style="font-weight: normal">nejmen&#353;&#237; strom m&#225; v&#353;echny vrcholy &#269;ern&#233;=&gt;hloubka k-1 ; nejv&#283;t&#353;&#237;: st&#345;&#237;dav&#283; &#269;ern&#233; a &#269;erv. =&gt;hloubky 2k-1 </span>
    </p>
    <p style="margin-bottom: 0cm">
      <span style="font-weight: normal">tak&#382;e k &#8804; hloubka &#8804; 2k =&gt; hloubka O(log n)</span>
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="m&#xe1;me v&#xed;ce p&#x159;&#xed;pad&#x16f; ale zase&#xa;jen max 3 rotace (delete)" ID="ID_1370065756" CREATED="1328537217093" MODIFIED="1328537378265" HGAP="-220" VSHIFT="60">
<icon BUILTIN="idea"/>
<hook NAME="FreeNode"/>
</node>
<node ID="ID_295240071" CREATED="1328534642812" MODIFIED="1328538642968"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p style="margin-bottom: 0cm">
      <font color="#000000"><b>Insert</b>&#160;</font>
    </p>
    <p style="margin-bottom: 0cm">
      <font color="#000000">(max 2 rot.)</font>
    </p>
  </body>
</html>
</richcontent>
<node ID="ID_1990575873" CREATED="1328534756218" MODIFIED="1328536410593" VSHIFT="20"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      -vlo&#382;&#237;me <font color="#ff0000"><b>nov&#253; vrchol N</b></font>&#160;jako do standatn&#237;ho BVS (jako list) a <font color="#ff0000"><b>obarv&#237;me &#269;erven&#283;</b></font>, prvn&#237; a 3 pravidlo jsme neporu&#353;ili
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1638429613" CREATED="1328536412812" MODIFIED="1328536424109"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      -pokud je <b>otec &#269;ern&#253;</b>&#160;tak ani druh&#233; (-&gt;konec)
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1476123199" CREATED="1328534642812" MODIFIED="1328535585812"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p style="margin-bottom: 0cm">
      -pokud je <font color="#ff0000"><b>otec&#160;&#269;erven&#253;</b></font>
    </p>
  </body>
</html>
</richcontent>
<node ID="ID_487803211" CREATED="1328534642828" MODIFIED="1328640841609" VSHIFT="10"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p style="margin-bottom: 0cm">
      -<b><font color="#ff0000">str&#253;c</font>&#160;</b>N <b><font color="#ff0000">je &#269;erven&#253;</font></b>&#160;&#8594; <b>p&#345;ebarv&#237;me otce a str&#253;ce na cerno</b>&#160;a <b><font color="#ff0000">d&#283;du</font></b>&#160;na <b><font color="#ff0000">&#269;erveno</font></b><font color="#000000">&#160; </font>
    </p>
    <p style="margin-bottom: 0cm">
      <font color="#000000">a&#160;&#160;posuneme chybu na d&#283;du</font>
    </p>
  </body>
</html>

</richcontent>
</node>
<node ID="ID_1656601126" CREATED="1328534642828" MODIFIED="1328536286406"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p style="margin-bottom: 0cm">
      -<b>str&#253;c </b>N <b>je &#269;ern&#253;</b>
    </p>
  </body>
</html>
</richcontent>
<node ID="ID_1791782696" CREATED="1328534642828" MODIFIED="1328640834546" VSHIFT="10"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p style="margin-bottom: 0cm">
      <b>N je lev&#253; syn</b>: provedeme pravou rotaci na d&#283;dovi a p&#345;ebarv&#237;me
    </p>
    <p style="margin-bottom: 0cm">
      (=pravidla spln&#283;na,konec)
    </p>
  </body>
</html>

</richcontent>
<hook URI="../bc/informatika/algoritmy_a_ds/obrazky/RB_case_2.png" SIZE="0.42878518" NAME="ExternalObject"/>
</node>
<node ID="ID_792919673" CREATED="1328534642828" MODIFIED="1328536303562"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p style="margin-bottom: 0cm">
      <b>N je prav&#253; syn</b>: lev&#225; rotace na otci &#8594; p&#345;echoz&#237; p&#345;&#237;pad
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
<node TEXT="Find,Insert,Delete v&#x17e;dy v O(log n)" ID="ID_307960741" CREATED="1328564785299" MODIFIED="1328564823572"/>
</node>
<node TEXT="B-Stromy" POSITION="right" ID="ID_1870206936" CREATED="1328562943152" MODIFIED="1328564669607">
<font BOLD="true"/>
<node TEXT="Pravidla:" ID="ID_648632699" CREATED="1328563693564" MODIFIED="1328563791360">
<font BOLD="true"/>
<node ID="ID_1209275212" CREATED="1328563784355" MODIFIED="1328563784355"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p class="MsoNormal" style="text-align: justify">
      - ne v&#353;echny vrcholy maj&#237; stejn&#253; po&#269;et syn&#367;
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1498384649" CREATED="1328563784364" MODIFIED="1328564618559"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p class="MsoNormal" style="text-align: justify">
      - po&#269;et datov&#253;ch box&#367; v&#160;uzlu je alespo&#328; m/2&#160;a nejv&#253;&#353;e m pro n&#283;jak&#233; m&gt;1
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1219891465" CREATED="1328563784384" MODIFIED="1328564518661"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p class="MsoNormal" style="text-align: justify">
      - ko&#345;en stupn&#283; alespo&#328; 2
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1422111474" CREATED="1328563784402" MODIFIED="1328563784402"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p class="MsoNormal" style="text-align: justify">
      - v&#353;echny listy ve stejn&#233; hladin&#283;
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node ID="ID_1647143152" CREATED="1328563930854" MODIFIED="1328563970004"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Insert</b>&#160;prob&#237;h&#225; tak, &#382;e se najde m&#237;sto, kam z&#225;znam vlo&#382;it, pokud nen&#237; uzel pln&#253;, prost&#283; se z&#225;znam vlo&#382;&#237;, jinak se uzel roz&#353;t&#283;p&#237;, p&#367;lka prvk&#367; se d&#225; vlevo, p&#367;lka vpravo a prost&#345;edn&#237; se vlo&#382;&#237; (&#8222;mezi n&#283;&#8220;) do otce. Pokud v otci nen&#237; m&#237;sto, pokra&#269;uje se stejn&#253;m zp&#367;sobem a&#382; do ko&#345;ene, kde se p&#345;&#237;padn&#283; vytvo&#345;&#237; nov&#253; uzel a ud&#283;l&#225; se z n&#283;j ko&#345;en.
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1897035214" CREATED="1328563930854" MODIFIED="1328564017160"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Delete</b>&#160;prvk&#367; je opa&#269;n&#253; postup, v p&#345;&#237;pad&#283; podte&#269;en&#237; uzlu mus&#237;m p&#345;eb&#237;rat data od sousedn&#237;ch uzl&#367; nebo sl&#233;vat. V redundantn&#237;ch B-stromech nen&#237; nutn&#233; p&#345;i maz&#225;n&#237; odstra&#328;ovat vyhled&#225;vac&#237; kl&#237;&#269; z vnit&#345;n&#237;ch uzl&#367; -- prvek s touto hodnotou se ve strom&#283; u&#382; nebude nach&#225;zet, ale vyhled&#225;vat podle jeho kl&#237;&#269;e je d&#225;l mo&#382;n&#233;.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Find,Insert,Delete v&#x17e;dy v O(log n)" ID="ID_573178780" CREATED="1328564785299" MODIFIED="1328564823572"/>
<node ID="ID_681363009" CREATED="1328563637653" MODIFIED="1328563871997"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      vhodn&#253; pro extern&#237; pam&#283;&#357; proto&#382;e v&#237;ce dat v uzlech sni&#382;uje p&#345;stupy do pam&#283;ti, a pokud m&#225;me data pouze v listech (<b>redundantn&#237; B-Stromy</b>) je to je&#353;t&#283; lep&#353;&#237;
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_217526231" CREATED="1328564077232" MODIFIED="1328564096495"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>B+ stromy</b>&#160;jsou m&#237;rn&#253;m vylep&#353;en&#237;m B-strom&#367; pro zrychlen&#237; intervalov&#253;ch dotaz&#367;: v&#353;echny uzly ve stejn&#233; &#250;rovni (a nebo jenom listy) jsou spojeny do spojov&#233;ho seznamu (mo&#382;n&#225; je jednosm&#283;rn&#225; i obousm&#283;rn&#225; varianta).
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_415067705" CREATED="1328564271098" MODIFIED="1328564667423"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>B* stromy</b>&#160;(&#345;&#225;du m) jsou &#250;pravou B-strom&#367; na z&#225;klad&#283; vyva&#382;ov&#225;n&#237; str&#225;nek. Druh&#225; podm&#237;nka B-strom&#367; se uprav&#237; tak, &#382;e ka&#382;d&#253; uzel krom&#283; ko&#345;ene m&#225; minim&#225;ln&#283; 2m/3 zapln&#283;n&#237;. P&#345;i vkl&#225;d&#225;n&#237; prvk&#367; se st&#283;pen&#237; odkl&#225;d&#225; op&#283;t do t&#233; doby, dokud nejsou pln&#237; i sourozenci dan&#233;ho listu; potom se &#353;t&#283;p&#237; bu&#271; 2 listy do 3, nebo 3 do 4 (bu&#271; s pomoc&#237; jednoho nebo dvou sousedn&#237;ch sourozenc&#367;). Odeb&#237;r&#225;n&#237; podobn&#283; zahrnuje sl&#233;v&#225;n&#237; 3 uzl&#367; do 2 (nebo 4 do 3). P&#345;i ob&#233;m lze ve slo&#382;it&#283;j&#353;&#237; variant&#283; zapojit je&#353;t&#283; v&#237;ce uzl&#367;.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Splay-trees" POSITION="right" ID="ID_1122188780" CREATED="1328564993169" MODIFIED="1328565973312">
<font BOLD="true"/>
<node ID="ID_1145903938" CREATED="1328565368661" MODIFIED="1328565637115"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Splay</b>&#160;- zarotuj ur&#269;en&#253; uzel a&#382; do ko&#345;ene
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_624421669" CREATED="1328565501743" MODIFIED="1328565580222"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Insert </b>- vlo&#382; jako v bvs a pak splay na p&#345;idan&#253;
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1096226297" CREATED="1328565580779" MODIFIED="1328565744415"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Delete</b>&#160;- sma&#382; jako v BVS(nahra&#271; nejlev&#283;j&#353;&#237;m z prav&#233;ho, nebo nejprav&#283;j&#353;&#237;m z lev&#233;ho) a splay na parenta
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="posledn&#xed; p&#x159;istupovan&#xe9; prvky jsou rychle dostupn&#xe9;" ID="ID_1328206016" CREATED="1328565814978" MODIFIED="1328565876556">
<icon BUILTIN="addition"/>
</node>
<node TEXT="nejhor&#x161;&#xed;m p&#x159;&#xed;pad a&#x17e; O(n) jinak O(log n), m&#x11b;n&#xed; se jenom hled&#xe1;n&#xed;m" ID="ID_1247121812" CREATED="1328565276935" MODIFIED="1328565898698">
<icon BUILTIN="subtraction"/>
</node>
<node ID="ID_1932711321" CREATED="1328566088507" MODIFIED="1328566373590"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Optim&#225;n&#237; BVS</b>&#160;- minimalizuj&#237; dobu hled&#225;n&#237; kdy&#382; v&#237;me p&#345;edem co budem hledat &#269;ast&#283;ji
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</map>

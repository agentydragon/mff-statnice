<map version="0.9.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node ID="ID_1723255651" CREATED="1283093380553" MODIFIED="1328459967168"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Rozd&#283;l a panuj</b>
    </p>
    <p>
      <b>rozd&#283;l</b>&#160;- rozd&#283;l&#237; &#250;lohu na n&#283;kolik pod&#250;loh stejn&#233;ho typu, ale men&#353;&#237; velikosti
    </p>
    <p>
      <b>vy&#345;e&#353;</b>&#160;- vy&#345;e&#353;&#237; pod&#250;lohy bu&#271; p&#345;&#237;mo pro dostate&#269;n&#283; mal&#233;, nebo d&#283;l&#237;me d&#225;l pokud jsou je&#353;t&#283; moc velk&#233;
    </p>
    <p>
      <b>sjedno&#357;</b>&#160;- sjednot&#237; &#345;e&#353;en&#237; pod&#250;loh do &#345;e&#353;en&#237; p&#367;vodn&#237; &#250;lohy
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
<node POSITION="right" ID="ID_1275153998" CREATED="1328461097793" MODIFIED="1328463597605" HGAP="30" VSHIFT="520"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>N&#225;soben&#237; v lep&#353;&#237;m ne&#382; krvadratick&#233;m &#269;ase:</b>
    </p>
    <p>
      (10<sup>N</sup>A+B)*(10<sup>N</sup>C+D) = (10<sup>2N</sup>AC + 10<sup>N</sup>(AD+BC) + BD)
    </p>
    <p>
      =&gt; T(n)=4T(n/2)+O(n)=O(n<sup>2</sup>)
    </p>
    <p>
      Trik, dosad&#237;me: AD+BC=(A+B)(C+D)-AC-BD
    </p>
    <p>
      =&gt; T(n)=3T(n/2)+O(n)=O(n<sup>log_2 3</sup>)&#8776;O(n<sup>1,58</sup>)
    </p>
  </body>
</html>

</richcontent>
</node>
<node POSITION="right" ID="ID_341317692" CREATED="1328459968199" MODIFIED="1328464393012" HGAP="90" VSHIFT="-210"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Rekurentn&#237; rovnice</b>
    </p>
    <p>
      T(n) = D&#283;len&#237;(n) + aT(n/c) + Sjednocov&#225;n&#237;(n)
    </p>
  </body>
</html>

</richcontent>
<hook NAME="FreeNode"/>
<node ID="ID_113173291" CREATED="1328460084277" MODIFIED="1328460682246"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Substitu&#269;n&#237; metoda</b>
    </p>
    <p>
      uhodnu &#345;e&#353;en&#237;, p&#345;&#237;mo/indukc&#237; ov&#283;&#345;&#237;m
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="T(n)=&#x398;(1) pro dost.mal&#xe1; n" ID="ID_1814979490" CREATED="1328460963605" MODIFIED="1328461005137" HGAP="30" VSHIFT="-40">
<icon BUILTIN="idea"/>
<hook NAME="FreeNode"/>
</node>
<node ID="ID_1209339009" CREATED="1328460686965" MODIFIED="1328460951324"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Master Theorem</b>
    </p>
    <p>
      T(n)=aT(n/c)+&#920;(nd)
    </p>
    <p>
      a<span class="b">&#8800;</span>c<sup>d</sup>&#160;&#8658; T(n) = &#920;(n <sup>max{d, log_<sub>c </sub>a}</sup>)
    </p>
    <p>
      a=c<sup>d</sup>&#160;&#8658; T(n) = &#920;(n<sup>d</sup>&#160;log<sub>c</sub>n)
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node POSITION="right" ID="ID_55100900" CREATED="1328462085730" MODIFIED="1328464382433" HGAP="30" VSHIFT="-10"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Strassen&#367;v algoritmus</b>
    </p>
    <p>
      Klasick&#233; n&#225;soben&#237; matic &#920;(n^3)
    </p>
    <p>
      -zlep&#353;&#237;me podle obr&#225;zku dole &#269;&#237;m&#382; m&#225;me 8 n&#225;soben&#237; matic polovi&#269;n&#237;ho &#345;&#225;du
    </p>
    <p>
      -strassen&#367;v algoritmus pak trikem jedno n&#225;soben&#237; vynech&#225; tak&#382;e m&#225;me
    </p>
    <p>
      T(n)=7T(n/2)+&#920;(n<sup>2</sup>)=&#920;(n <sup>log_2 7</sup>)&#8776;&#920;(n<sup>2,8</sup>)
    </p>
  </body>
</html>

</richcontent>
<hook URI="../bc/informatika/algoritmy_a_ds/obrazky/nasobeni-matic-2.png" SIZE="1.0" NAME="ExternalObject"/>
</node>
<node POSITION="right" ID="ID_894342481" CREATED="1328463087183" MODIFIED="1328463842465" HGAP="30" VSHIFT="-614"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Hled&#225;n&#237; k-t&#233;ho nejmen&#353;&#237;ho prvku v lin.&#269;ase (Blum et al.)</b>
    </p>
    <p>
      Select(X,k)
    </p>
    <p>
      -Pokud n &#8804;&#160;5 -&gt; vy&#345;e&#353;&#237;me p&#345;&#237;mo
    </p>
    <p>
      -Vstup rozd&#283;l&#237;me na p&#283;tice P<sub>1</sub>&#160;. . . P<sub>n/5</sub>&#160; (posledn&#237; m&#367;&#382;e b&#253;t ne&#250;pln&#225;), to zvl&#225;dneme v O(n)
    </p>
    <p>
      -&#8704; i: m<sub>i</sub>&#160;= median(P<sub>i</sub>), to zvl&#225;dneme v O(n)
    </p>
    <p>
      -pivot = Select (m<sub>1</sub>,...,m<sub>n/5</sub>, n/10)&#160;&#160;&#160;&#160;&#160;(medi&#225;n medi&#225;n&#367; - T(n/5))
    </p>
    <p>
      -Rozd&#283;lime X na L(=men&#353;&#237; ne&#382; pivot), S(=stejn&#233; jako pivot), P(=v&#283;t&#353;&#237; ne&#382; pivot)
    </p>
    <p>
      -Rekurzivn&#283; se zavol&#225;me na jednu z L, S, P (tu, ve ktere se ma vyskytovat hledany prvek&#160;&#160;- T(7n/10))
    </p>
    <p>
      
    </p>
    <p>
      T(n)=&#920;(n)+T(n/5)+T(7n/10) =&#920;(n)
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
</map>

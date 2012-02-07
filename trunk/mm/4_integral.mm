<map version="0.9.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Integr&#xe1;l" ID="ID_1723255651" CREATED="1283093380553" MODIFIED="1328639787171"><hook NAME="MapStyle">

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
<node POSITION="left" ID="ID_1681854017" CREATED="1328623014765" MODIFIED="1328639691687"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Prim. funkce</b>&#160;- Necht -&#8734;&lt;=a&lt;b&lt;=+&#8734; a f:(a,b)-&gt;R,
    </p>
    <p>
      pokud m&#225; F:(a,b)-&gt;R na (a,b) derivaci F'(x)=f(x),
    </p>
    <p>
      &#345;ekneme &#382;e F na (a,b) je prim. funkci k f
    </p>
  </body>
</html>

</richcontent>
<node ID="ID_1891809658" CREATED="1328625820437" MODIFIED="1328625988109"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Tvar prim.fce </b>
    </p>
    <p>
      jeli F(x) prim. k&#160;f(x) na (a,b), je &#8704;c&#8712;R F(x)+c prim. k f(x) na (a,b).
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_868412060" CREATED="1328625710359" MODIFIED="1328625764343"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Linearita prim.fce</b>
    </p>
  </body>
</html>
</richcontent>
<hook EQUATION="\int (\alpha f(x) + \beta g(x)) \d x = \alpha \int f(x) \d x + \beta \int g(x) \d x" NAME="plugins/latex/LatexNodeHook.properties"/>
</node>
<node ID="ID_792581298" CREATED="1328626535218" MODIFIED="1328639778343" VSHIFT="20"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>o substituci</b>
    </p>
    <p>
      fce &#966;: (&#945;,&#946;)-&gt;(a,b) a f: (a,b)-&gt;R
    </p>
    <p>
      p&#345;i&#269;em&#382; &#966; m&#225; na (&#945;,&#946;) vlastn&#237; derivaci:&#160;
    </p>
  </body>
</html>

</richcontent>
<node TEXT="fce F: (a,b)-&gt;R je na (a,b) primitivn&#xed; fci f(x) pak:" ID="ID_1438200209" CREATED="1328626919015" MODIFIED="1328626955328">
<hook EQUATION="\int f(\varphi(t))\varphi&apos;(t)dt=F(\varphi(t))+C \textit{ na } (\alpha,\beta)" NAME="plugins/latex/LatexNodeHook.properties"/>
</node>
<node TEXT="fce G: (&#x3b1;,&#x3b2;)-&gt;R je na (&#x3b1;,&#x3b2;) primitivn&#xed; k fci f(&#x3c6; (t))&#x3c6;&#x2018;(t)&#xa;a plat&#xed; &#x3c6;((&#x3b1;,&#x3b2;))= (a,b) a &#x3c6;&#x2018;&#x2260;0 na (&#x3b1;,&#x3b2;) pak:" ID="ID_1924318067" CREATED="1328626995843" MODIFIED="1328639730312">
<hook EQUATION="\int f(x)\d x=G(\varphi^{-1}(x))+C \textit{ na } (a,b)" NAME="plugins/latex/LatexNodeHook.properties"/>
</node>
</node>
<node ID="ID_262670902" CREATED="1328626174953" MODIFIED="1328633925781" VSHIFT="-30"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>per partes</b>
    </p>
    <p>
      fce f,g spojit&#233; na (a,b) a fce F,G jsou k nim primitivn&#237; na (a,b) pak plat&#237;:
    </p>
  </body>
</html>
</richcontent>
<font BOLD="false"/>
<hook EQUATION="\int f(x)G(x)\d x=F(x)G(x) - \int F(x)g(x)\d x \textit{ na } (a,b)" NAME="plugins/latex/LatexNodeHook.properties"/>
</node>
</node>
<node POSITION="right" ID="ID_685495654" CREATED="1328623247437" MODIFIED="1328639888921" HGAP="-210" VSHIFT="-40"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p style="line-height: normal; margin-bottom: 6.0pt" class="MsoNormal">
      <b>Riemann&#367;v integr&#225;l</b>&#160;<b>(Darbouxova definice):</b>&#160;
    </p>
    <p style="line-height: normal; margin-bottom: 6.0pt" class="MsoNormal">
      fce f:[a,b]-&gt;R ma na [a,b] <b>RI</b>&#160;pokud:
    </p>
  </body>
</html>

</richcontent>
<hook EQUATION="{\int_a^b}f = \overline{\int_a^b}f=\underline{\int_a^b}f" NAME="plugins/latex/LatexNodeHook.properties"/>
<hook URI="../bc/matematika/obrazky/RI.png" SIZE="0.3610904" NAME="ExternalObject"/>
<node TEXT="d&#x11b;len&#xed; intervalu [a, b]" ID="ID_1447377688" CREATED="1328625214500" MODIFIED="1328638582421">
<hook EQUATION="D=(a_0,a_1..,a_k),\ I_i=[a_i,a_{i+1}]" NAME="plugins/latex/LatexNodeHook.properties"/>
<font BOLD="true"/>
</node>
<node ID="ID_1386397846" CREATED="1328624318718" MODIFIED="1328633482000"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>doln&#237; RI</b>
    </p>
  </body>
</html>
</richcontent>
<hook EQUATION="\underline{\int_a^b}f=\sup_D s(f,D)" NAME="plugins/latex/LatexNodeHook.properties"/>
<node ID="ID_797368002" CREATED="1328623666750" MODIFIED="1328624419718"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>doln&#237; Riemannova suma</b>
    </p>
  </body>
</html>
</richcontent>
<hook EQUATION="s(f,D)=\sum_{i=0}^{k-1} |I_i|\inf_{x\in I_i}f(x) " NAME="plugins/latex/LatexNodeHook.properties"/>
</node>
</node>
<node ID="ID_355277761" CREATED="1328624318718" MODIFIED="1328624339578"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>horn&#237; RI</b>
    </p>
  </body>
</html>
</richcontent>
<hook EQUATION="\overline{\int_a^b}f=\inf_D S(f,D)" NAME="plugins/latex/LatexNodeHook.properties"/>
<node ID="ID_1813400219" CREATED="1328623666750" MODIFIED="1328623906406"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>horn&#237; Riemannova suma</b>
    </p>
  </body>
</html>
</richcontent>
<hook EQUATION="S(f,D)=\sum_{i=0}^{k-1} |I_i|\sup_{x\in I_i}f(x) " NAME="plugins/latex/LatexNodeHook.properties"/>
</node>
</node>
<node ID="ID_1892016936" CREATED="1328628448921" MODIFIED="1328628510078"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Lebesgueova v&#283;ta o existenci RI </b>
    </p>
    <p>
      fce f: [a,b]-&gt;R je Riemann.integrovat. &#8660; je na [a,b] omezen&#225; a mno&#382;ina jejich bod&#367; nespojitosti m&#225; m&#237;ru 0
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1493978187" CREATED="1328627261390" MODIFIED="1328630283031"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>1.z&#225;kladn&#237; v&#283;ta anal&#253;zy</b>&#160;(Souvislost RI a derivace)
    </p>
    <p>
      fce F: [a,b]-&gt;R maj&#237;c&#237; na [a,b] RI , F(x)=&#8747;_a^x&#160;&#160;f&#160;&#160;&#8658; F je spoj.na [a,b] a tak&#233;:
    </p>
  </body>
</html>
</richcontent>
<hook EQUATION="F&apos;(x_0)=f(x_0)\ \forall x_0\in[a,b] \footnotesize\text{ (bod spojitosti f)}" NAME="plugins/latex/LatexNodeHook.properties"/>
</node>
<node ID="ID_910905918" CREATED="1328627261390" MODIFIED="1328627774953"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>2.z&#225;kladn&#237; v&#283;ta anal&#253;zy</b>&#160;(Souvislost RI a prim.fce)
    </p>
    <p>
      fce f : [a, b] -&gt; R m&#225; na [a, b] RI a prim.fci F. Potom, pro ka&#382;dou F, plat&#237;:
    </p>
  </body>
</html>
</richcontent>
<hook EQUATION="\int_a^bf = F(b)-(F(a)" NAME="plugins/latex/LatexNodeHook.properties"/>
</node>
<node ID="ID_780140093" CREATED="1328627261390" MODIFIED="1328630834953"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Newton&#367;v integr&#225;l</b>
    </p>
    <p>
      fce f : (a, b) -&gt; R m&#225; prim.fci F na (a,b). Potom NI je:
    </p>
  </body>
</html>
</richcontent>
<hook EQUATION="(N)\int_a^bf = (\lim_{x\rightarrow b-}F(x))-(\lim_{x\rightarrow a+}F(x))" NAME="plugins/latex/LatexNodeHook.properties"/>
<node ID="ID_330975544" CREATED="1328630853078" MODIFIED="1328632150921"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>vztah NI a RI</b>
    </p>
    <p>
      f je spoj&#237;t&#225; na [a,b], pak:
    </p>
  </body>
</html>
</richcontent>
<hook EQUATION="(N)\int_a^b f(x) \d x = (R)\int_a^b f(x) \d x" NAME="plugins/latex/LatexNodeHook.properties"/>
</node>
</node>
<node TEXT="vyu&#x17e;it&#xed;" ID="ID_1416007478" CREATED="1328632270171" MODIFIED="1328632905640">
<font BOLD="true"/>
<node TEXT="d&#xe9;lka k&#x159;ivky" ID="ID_691402515" CREATED="1328632276109" MODIFIED="1328632904687">
<hook EQUATION="L(f)=\int_a^b \sqrt{1+(f&apos;(x))^2}\d x" NAME="plugins/latex/LatexNodeHook.properties"/>
<font BOLD="true"/>
</node>
<node TEXT="objem rot.t&#x11b;lesa" ID="ID_1894839802" CREATED="1328632665328" MODIFIED="1328632903312">
<hook EQUATION="V=\pi \int_a^bf(x)^2\d x" NAME="plugins/latex/LatexNodeHook.properties"/>
<font BOLD="true"/>
<node TEXT="objem koule" ID="ID_1320452595" CREATED="1328632714546" MODIFIED="1328632750484">
<hook EQUATION="V=\pi \int_a^bf(\sqrt{r^2-x^2})^2\d x" NAME="plugins/latex/LatexNodeHook.properties"/>
</node>
</node>
</node>
</node>
<node POSITION="right" ID="ID_1049549855" CREATED="1328637449015" MODIFIED="1328639885437" HGAP="-210" VSHIFT="50"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>V&#237;cerozm&#283;rn&#253; RI</b>
    </p>
    <p>
      fce f: I-&gt;R omezen&#225; ma na I RI&#160;pokud:
    </p>
  </body>
</html>

</richcontent>
<font BOLD="false"/>
<hook EQUATION="{\int_I}f = \overline{\int_I}f=\underline{\int_I}f" NAME="plugins/latex/LatexNodeHook.properties"/>
<node TEXT="D - d&#x11b;len&#xed; n-rozm&#x11b;rn&#xe9;ho boxu I na podboxy J" ID="ID_1039108505" CREATED="1328625214500" MODIFIED="1328638653031">
<hook EQUATION="I=[a_1,b_1]\times..\times[a_n,b_n] \subset R^n" NAME="plugins/latex/LatexNodeHook.properties"/>
<font BOLD="true"/>
</node>
<node ID="ID_1778205070" CREATED="1328638725531" MODIFIED="1328638755546"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>objem boxu J</b>
    </p>
  </body>
</html>

</richcontent>
<hook EQUATION="|J|=(b_1-a_1).(b_2-a_2)\dots(b_n-a_n)" NAME="plugins/latex/LatexNodeHook.properties"/>
</node>
<node ID="ID_794477444" CREATED="1328624318718" MODIFIED="1328633482000"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>doln&#237; RI</b>
    </p>
  </body>
</html>
</richcontent>
<hook EQUATION="\underline{\int_I}f=\sup_D s(f,D)" NAME="plugins/latex/LatexNodeHook.properties"/>
<node ID="ID_1450416659" CREATED="1328623666750" MODIFIED="1328624419718"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>doln&#237; Riemannova suma</b>
    </p>
  </body>
</html>
</richcontent>
<hook EQUATION="s(f,D)=\sum_{J\in D} |J|\inf_{x\in J}f(x) " NAME="plugins/latex/LatexNodeHook.properties"/>
</node>
</node>
<node ID="ID_1274714133" CREATED="1328624318718" MODIFIED="1328624339578"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>horn&#237; RI</b>
    </p>
  </body>
</html>
</richcontent>
<hook EQUATION="\overline{\int_I}f=\inf_D S(f,D)" NAME="plugins/latex/LatexNodeHook.properties"/>
<node ID="ID_1634049587" CREATED="1328623666750" MODIFIED="1328623906406"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>horn&#237; Riemannova suma</b>
    </p>
  </body>
</html>
</richcontent>
<hook EQUATION="S(f,D)=\sum_{J\in D} |J|\sup_{x\in J}f(x) " NAME="plugins/latex/LatexNodeHook.properties"/>
</node>
</node>
<node ID="ID_1217151301" CREATED="1328628448921" MODIFIED="1328639071562"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Lebesgueova v&#283;ta o existenci RI </b>
    </p>
    <p>
      fce f: I-&gt;R je Riemann.integrovat. &#8660; je na I omezen&#225; a mno&#382;ina jejich bod&#367; nespojitosti m&#225; m&#237;ru 0
    </p>
  </body>
</html>

</richcontent>
</node>
<node ID="ID_1832545837" CREATED="1328639176281" MODIFIED="1328639648531"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Fubiniova</b>
    </p>
    <p>
      fce f: Z=X x Y-&gt;R, f je riemanovsky integrovateln&#225; na Z pak:
    </p>
  </body>
</html>

</richcontent>
<hook EQUATION="{\int_Z}f(x,y)) dxdy = \int_X\left(\int_Y f(x,y)dy\right)dx = \int_Y\left(\int_X f(x,y)dx\right)dy \footnotesize\text{ (a v&#x161;echny existuj&#xed;)}" NAME="plugins/latex/LatexNodeHook.properties"/>
</node>
</node>
</node>
</map>

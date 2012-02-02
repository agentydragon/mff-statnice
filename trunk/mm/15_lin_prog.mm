<map version="0.9.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node ID="ID_1723255651" CREATED="1283093380553" MODIFIED="1328203360093"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p style="text-align: center">
      <b>Line&#225;rn&#237; programov&#225;n&#237;</b>&#160;
    </p>
    <p style="text-align: center">
      je ozna&#269;en&#237; pro &#250;lohu maximalizovat
    </p>
    <p style="text-align: center">
      jistou funkci <i>n</i>&#160;re&#225;ln&#253;ch prom&#283;nn&#253;ch na mno&#382;in&#283; bod&#367;
    </p>
    <p style="text-align: center">
      polytopu v prostoru <i>R<sup>n</sup></i>.
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
<edge COLOR="#808080"/>
<node TEXT="prim&#xe1;rn&#xed; &#xfa;loha (P)" POSITION="right" ID="ID_1431552165" CREATED="1328198073546" MODIFIED="1328198520906" VSHIFT="-40">
<hook EQUATION="\text{maximalizovat }\mathbf{c}^T\mathbf{x}\text{ za podm&#xed;nek }A\mathbf{x}\leq \mathbf{b}\text{, }\mathbf{x}\geq\mathbf{0}" NAME="plugins/latex/LatexNodeHook.properties"/>
<font BOLD="true"/>
<node ID="ID_429481537" CREATED="1328199239640" MODIFIED="1328203440156"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>c</b>&#160;je <b>cenov&#253; vektor </b>
    </p>
    <p>
      <b>c</b><sup>T</sup><b>x</b>&#160;je <b>&#250;&#269;elov&#225; funkce</b>
    </p>
  </body>
</html>

</richcontent>
</node>
<node ID="ID_1774401964" CREATED="1328199323343" MODIFIED="1328199552031"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      A<b>x</b>&#8804;<b>b</b>&#160;a <b>x</b>&#8805;0 jsou <b>omezuj&#237;c&#237; podm&#237;nky</b>,
    </p>
    <p>
      vektor <b>b</b>&#160;je <b>prav&#225; strana &#250;lohy</b>
    </p>
  </body>
</html>

</richcontent>
</node>
<node ID="ID_1410378737" CREATED="1328199649296" MODIFIED="1328200238500"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>p&#345;&#237;pustn&#233; &#345;e&#353;en&#237;</b>: <b>x</b>&#160;spl&#328;uj&#237;c&#237; omezuj&#237;c&#237; podm&#237;nky
    </p>
  </body>
</html>

</richcontent>
</node>
<node ID="ID_600718964" CREATED="1328200154187" MODIFIED="1328200230937"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>optim&#225;ln&#237; &#345;e&#353;en&#237;</b>: p&#345;&#237;pustn&#233; &#345;e&#353;en&#237; pro kter&#233; je &#250;&#269;elov&#225; funkce maxim&#225;ln&#237;
    </p>
  </body>
</html>

</richcontent>
</node>
<node ID="ID_474445413" CREATED="1328200579500" MODIFIED="1328203121093" HGAP="-330" VSHIFT="50"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>simplexov&#225; metoda</b>&#160;z (P) vytvo&#345;&#237;me <b>pomocnou &#250;lohu</b>:
    </p>
  </body>
</html>

</richcontent>
<hook EQUATION="\text{maximalizovat }\mathbf{c}^T\mathbf{x}\text{ za podm&#xed;nek }A\mathbf{x}= \mathbf{b}\text{, }\mathbf{x}\geq\mathbf{0}" NAME="plugins/latex/LatexNodeHook.properties"/>
<node TEXT="b&#xe1;ze" ID="ID_1792616185" CREATED="1328200707609" MODIFIED="1328201119937">
<hook EQUATION="\footnotesize\text{je podmno&#x17e;ina index&#x16f; }B\subseteq\{1,...,n\}\text{ &#x17e;e: }A_B\text{ je regul&#xe1;n&#xed;}" NAME="plugins/latex/LatexNodeHook.properties"/>
<font BOLD="true"/>
<node ID="ID_862580446" CREATED="1328200940890" MODIFIED="1328203606484"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      A<sub>B</sub>&#160;je matice pouze se sloupci s indexy z B
    </p>
  </body>
</html>

</richcontent>
</node>
<node ID="ID_177265000" CREATED="1328201215984" MODIFIED="1328203708984"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      b&#225;ze je <b>p&#345;&#237;pustn&#225;</b>&#160;pokud A<sub>B</sub><b>x</b><sub>B</sub>=<b>b</b>&#160; m&#225; nez&#225;porn&#233; &#345;e&#353;en&#237;
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node ID="ID_822307763" CREATED="1328201750203" MODIFIED="1328202012359"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>b&#225;zick&#233; &#345;e&#353;en&#237; x</b>
    </p>
  </body>
</html>

</richcontent>
<hook EQUATION="\footnotesize\text{pokud }\exists B \text{: }A_B\mathbf{x}_B=\mathbf{b}\text{ a }\mathbf{x}_i=\mathbf{0}\ \forall i \in\{1,..,n\}\setminus B" NAME="plugins/latex/LatexNodeHook.properties"/>
</node>
<node ID="ID_224784996" CREATED="1328202046187" MODIFIED="1328202088000"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>p&#345;&#237;pustn&#233; bazick&#233; &#345;e&#353;en&#237; x</b>&#160;- bazick&#233; &#345;e&#353;en&#237;, kter&#233; je p&#345;&#237;pustn&#233;
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="v&#x11b;ty k algoritmu" ID="ID_1693916630" CREATED="1328202241500" MODIFIED="1328202796921">
<node TEXT="x p&#x159;&#xed;pustn&#xe9; je i bazick&#xe9; &#x21d4; sloupce A odp. kladn&#xfd;m prom&#x11b;nn&#xfd;m jsou LN" ID="ID_351133598" CREATED="1328202256109" MODIFIED="1328202348156"/>
<node ID="ID_660579796" CREATED="1328202349125" MODIFIED="1328203548984"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Nech&#357; m-prvkov&#225; B, pro kterou je A<sub>B</sub>&#160;regul&#225;rn&#237; &#8658;&#160;&#8707;&#160;nejv&#253;&#353;e 1 p&#345;&#237;pustn&#233; b&#225;zick&#233; &#345;e&#353;en&#237;
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="m&#xe1;-li &#xfa;loha optim&#xe1;ln&#xed; &#x159;e&#x161;en&#xed; &#x21d2; n&#x11b;kter&#xe9; bazick&#xe9; &#x159;e&#x161;en&#xed; je optim&#xe1;ln&#xed;" ID="ID_267793849" CREATED="1328202673171" MODIFIED="1328202720218">
<node TEXT="b&#xe1;zick&#xfd;ch &#x159;e&#x161;en&#xed; je kon.mnoho" ID="ID_1188571218" CREATED="1328202764484" MODIFIED="1328203765640" HGAP="50" VSHIFT="40">
<icon BUILTIN="idea"/>
<hook NAME="FreeNode"/>
</node>
</node>
</node>
<node TEXT="TODO: p&#x159;&#xed;klady" ID="ID_1373363038" CREATED="1328203134375" MODIFIED="1328203154609" HGAP="70" VSHIFT="80">
<hook NAME="FreeNode"/>
</node>
</node>
</node>
<node POSITION="right" ID="ID_1166270713" CREATED="1328198521906" MODIFIED="1328199234062"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>du&#225;ln&#237; &#250;loha (D)</b>
    </p>
  </body>
</html>

</richcontent>
<hook EQUATION="\text{minimalizovat }\mathbf{b}^T\mathbf{y}\text{ za podm&#xed;nek }A^T\mathbf{y}\geq \mathbf{c}\text{, }\mathbf{y}\geq\mathbf{0}" NAME="plugins/latex/LatexNodeHook.properties"/>
<node ID="ID_319827008" CREATED="1328198632406" MODIFIED="1328202895703"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>slab&#225; v&#283;ta o dualit&#283;:</b>
    </p>
    <p>
      &#8704; p&#345;&#237;pustn&#233; &#345;e&#353;en&#237; <b>x</b>&#160;&#250;lohy (P)
    </p>
    <p>
      a &#8704; p&#345;&#237;pustn&#233; &#345;e&#353;en&#237; <b>y</b>&#160;&#160;&#250;lohy (D) plat&#237;:
    </p>
  </body>
</html>

</richcontent>
<hook EQUATION="\mathbf{c}^T\mathbf{x}\leq\mathbf{b}^T\mathbf{y}" NAME="plugins/latex/LatexNodeHook.properties"/>
</node>
<node ID="ID_1795693691" CREATED="1328198927109" MODIFIED="1328198986859"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>siln&#225; v&#283;ta o dualit&#283;:</b>
    </p>
    <p>
      pokud (P) a (D) maj&#237; p&#345;&#237;pustn&#233; &#345;e&#353;en&#237; plat&#237;:
    </p>
  </body>
</html>

</richcontent>
<hook EQUATION="\mathbf{c}^T\mathbf{x}=\mathbf{b}^T\mathbf{y}" NAME="plugins/latex/LatexNodeHook.properties"/>
</node>
</node>
</node>
</map>

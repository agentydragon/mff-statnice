<map version="0.9.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node ID="ID_1723255651" CREATED="1283093380553" MODIFIED="1327781082794"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p style="text-align: center">
      <b>Determinant</b>
    </p>
    <p style="text-align: center">
      zobrazen&#237;, kter&#233; p&#345;i&#345;ad&#237; ka&#382;d&#233;
    </p>
    <p style="text-align: center">
      &#269;tvercov&#233; matici A skal&#225;r <b>det A</b>
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
<edge WIDTH="1"/>
<node POSITION="right" ID="ID_104826023" CREATED="1327780008372" MODIFIED="1327780123434" HGAP="-10" VSHIFT="-180"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Geometrick&#253; v&#253;znam</b>: matice 3x3,
    </p>
    <p>
      &#345;&#225;dky jsou vektory rovnob&#283;&#382;nost&#283;nu
    </p>
    <p>
      potom |det A| = objem rovnob&#283;&#382;nost&#283;nu
    </p>
  </body>
</html>

</richcontent>
<hook NAME="FreeNode"/>
</node>
<node POSITION="right" ID="ID_1919436176" CREATED="1327776295106" MODIFIED="1327780231137" HGAP="190" VSHIFT="-130"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>n&#225;soben&#237;</b>&#160;&#345;&#225;dku/sloupce &#269;&#237;slem t <b>n&#225;sob&#237;&#160;det</b>&#160;&#269;&#237;slem t, <b>s&#269;&#237;t&#225;n&#237;</b>&#160;&#160;&#345;&#225;dk&#367;/sloupc&#367; <b>nem&#283;n&#237;</b>&#160;<b>det</b>
    </p>
  </body>
</html>

</richcontent>
<hook NAME="FreeNode"/>
</node>
<node TEXT="A je regul&#xe1;rn&#xed; &#x21d4; det A &#x2260; 0" POSITION="right" ID="ID_1758620691" CREATED="1327776466872" MODIFIED="1327781029278" HGAP="-170" VSHIFT="-130">
<hook NAME="FreeNode"/>
</node>
<node TEXT="det(AB)=det(A)det(B)" POSITION="right" ID="ID_735999169" CREATED="1327777171356" MODIFIED="1327777264887" HGAP="-170" VSHIFT="-110">
<hook NAME="FreeNode"/>
<node TEXT="d&#x16f;sledek:" ID="ID_980438742" CREATED="1327778253356" MODIFIED="1327778392231" HGAP="-270" VSHIFT="-10">
<icon BUILTIN="forward"/>
<hook EQUATION="\det(A^{-1})=\frac{1}{\det(A)}" NAME="plugins/latex/LatexNodeHook.properties"/>
<hook NAME="FreeNode"/>
</node>
<node TEXT="D&#x16f;kaz:" ID="ID_263191841" CREATED="1327777306590" MODIFIED="1327778174825" HGAP="-458" VSHIFT="110">
<hook EQUATION="\footnotesize\begin{align}&#xd;&#xa;&amp;\text{A,B singul&#xe1;rn&#xed;} \Rightarrow \det(A)=\det(B)=\det(AB)=0\\&#xd;&#xa;&amp;\text{A,B regul&#xe1;rn&#xed;:} \\&#xd;&#xa;&#xd;&#xa;\det(AB) &amp; = \det(E_1E_2\dots E_k B)=\det(E_1)\cdot\det(E_2\dots E_k B)\\&#xd;&#xa;&amp; =\det(E_1)\det(E_2)\dots\det(E_k)\det(B)=\det(A)\det(B) \\&#xd;&#xa;&amp;\text{proto&#x17e;e v&#xed;me, jak&#xfd;m zp&#x16f;sobem element&#xe1;rn&#xed; &#xfa;pravy}\\&#xd;&#xa;&amp;\text{(ekvivalent element&#xe1;rn&#xed;ch matic ve vzorci) m&#x11b;n&#xed; determinant.}&#xd;&#xa;\end{align}" NAME="plugins/latex/LatexNodeHook.properties"/>
</node>
</node>
<node POSITION="right" ID="ID_1570203368" CREATED="1327775890887" MODIFIED="1327776207606" HGAP="0" VSHIFT="-30"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      p&#345;erovn&#225;n&#237;m &#345;&#225;dk&#367;/sloupc&#367; podle
    </p>
    <p>
      permutace <i>p</i>&#160;&#160;se det n&#225;sob&#237; sgn(<i>p</i>)
    </p>
  </body>
</html>

</richcontent>
<node ID="ID_1748319930" CREATED="1327776041169" MODIFIED="1327780212715">
<icon BUILTIN="forward"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>z&#225;m&#283;na</b>&#160;dvou &#345;&#225;dk&#367;/sloupc&#367; m&#283;n&#237; <b>znam&#233;nko det</b>
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="matice m&#xe1; schodn&#xe9; 2 &#x159;&#xe1;dky/sloupce(singul&#xe1;rn&#xed;) &#x21d2; det A = 0" ID="ID_483765680" CREATED="1327776086028" MODIFIED="1327780914606">
<icon BUILTIN="forward"/>
</node>
</node>
<node TEXT="determinant transponovan&#xe9; matice" POSITION="right" ID="ID_1923279215" CREATED="1327775778044" MODIFIED="1327780538559" HGAP="190" VSHIFT="-60">
<hook EQUATION="\det A= \det A^T" NAME="plugins/latex/LatexNodeHook.properties"/>
<hook NAME="FreeNode"/>
</node>
<node POSITION="right" ID="ID_1340058017" CREATED="1327779665153" MODIFIED="1327779879184" HGAP="130" VSHIFT="146"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Gaussova eliminace</b>
    </p>
    <p>
      sna&#382;&#237;me se dostat &#916;matici
    </p>
    <p>
      (pozor na to jak operace m&#283;n&#237; determinant)
    </p>
    <p>
      det &#916;matice = sou&#269;in diagon&#225;ly
    </p>
  </body>
</html>

</richcontent>
<hook NAME="FreeNode"/>
</node>
<node POSITION="left" ID="ID_146077420" CREATED="1327774253059" MODIFIED="1327775754340" HGAP="-540" VSHIFT="-20"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Definice pomoc&#237; <i>Leibnitzova vzorce</i>
    </p>
  </body>
</html>

</richcontent>
<hook EQUATION="\det A = \sum_{\sigma \in S_n}sgn(p) \prod_{i=1}^n a_{i,p(i)}" NAME="plugins/latex/LatexNodeHook.properties"/>
<node TEXT="m&#xe1; n! s&#x10d;&#xed;tanc&#x16f; tak&#x17e;e se p&#x159;es&#xa;n&#x11b;j ned&#xe1; moc po&#x10d;&#xed;tat" ID="ID_175603465" CREATED="1327774351809" MODIFIED="1327780517903" HGAP="-200" VSHIFT="30">
<icon BUILTIN="idea"/>
<hook NAME="FreeNode"/>
</node>
<node TEXT="Znam&#xe9;nko permutace a mno&#x17e;ina invers&#xed; n&#x11b;jak&#xe9; permutace p" ID="ID_1924926724" CREATED="1327773689528" MODIFIED="1327774474903" HGAP="-380" VSHIFT="80" STYLE="fork">
<edge COLOR="#000000" WIDTH="1"/>
<hook EQUATION="sgn(p)=(-1)^{|I(p)|},\ I(p)=\{(i,j):i&lt;j \ \&amp;\ p(i)&gt;p(j)\}" NAME="plugins/latex/LatexNodeHook.properties"/>
</node>
</node>
<node POSITION="left" ID="ID_1370441284" CREATED="1327781064231" MODIFIED="1327781615872" HGAP="240" VSHIFT="90"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>subdeterminanty / minory</b>
    </p>
  </body>
</html>

</richcontent>
<hook NAME="FreeNode"/>
<hook EQUATION="\begin{align}&#xd;&#xa;&amp;\text{matice } A_{ij} \text{vznikne odstran&#x11b;n&#xed;m i-t&#xe9;ho &#x159;&#xe1;dku a j-t&#xe9;ho sloupce} \\&#xd;&#xa;&amp;\det A_{ij}\text{ je pak \textbf{subdeterminantem} /\textbf{minorem }  a plat&#xed;:} \\&#xd;&#xa;&amp;\det( A ) = \sum_{j=1}^n a_{i,j}\cdot (-1)^{i+j}\det( A_{ij} ) \\&#xd;&#xa;&amp;(A^{-1})_{i,j}=(-1)^{i+j}\frac{\det(A_\mathbf{ji})}{\det A}&#xd;&#xa;\end{align}" NAME="plugins/latex/LatexNodeHook.properties"/>
<node TEXT="Adjungovan&#xe1; matice" ID="ID_1154360030" CREATED="1327781707200" MODIFIED="1327781840309" HGAP="-200" VSHIFT="140">
<icon BUILTIN="info"/>
<hook EQUATION="\begin{align}&#xd;&#xa;&amp;(\text{adj} A)_{i,j}=(-1)^{i+j}\cdot\det(A_{ji}) \\&#xd;&#xa;&amp;A^{-1}=\frac{1}{\det A}\cdot(\text{adj} A)&#xd;&#xa;\end{align}" NAME="plugins/latex/LatexNodeHook.properties"/>
</node>
</node>
<node POSITION="left" ID="ID_951220376" CREATED="1327781883497" MODIFIED="1327782233950" HGAP="-100" VSHIFT="270"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Cramerovo pravidlo</b>
    </p>
  </body>
</html>

</richcontent>
<hook NAME="FreeNode"/>
<hook EQUATION="\begin{align}&#xd;&#xa;&amp;A\mathbf{x}=\mathbf{b}\text{ m&#xe1; &#x159;e&#x161;en&#xed; ve tvaru:} \\&#xd;&#xa;&amp;x_i = \frac{\det A_{i\rightarrow \mathbf{b}}}{\det A} \\&#xd;&#xa;&amp;\footnotesize \text{kde matice } A_{i\rightarrow \mathbf{b}} \text{ vznikne nahrazen&#xed;m i-t&#xe9;ho sloupce vektorem \textbf{b}}&#xd;&#xa;\end{align}" NAME="plugins/latex/LatexNodeHook.properties"/>
</node>
<node TEXT="det 3x3 - Sarrusovo pravidlo" POSITION="right" ID="ID_46223129" CREATED="1327775184559" MODIFIED="1327782285903" HGAP="210" VSHIFT="190">
<hook URI="../Plocha/mff-statnice/bc/matematika/obrazky/sarrusovo_pravidlo.png" SIZE="0.28713778" NAME="ExternalObject"/>
</node>
</node>
</map>

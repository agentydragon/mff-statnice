<map version="0.9.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Z&#xe1;klady kryptografie" ID="ID_1723255651" CREATED="1283093380553" MODIFIED="1328400124622"><hook NAME="MapStyle">

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
<node POSITION="right" ID="ID_1756506959" CREATED="1328400125372" MODIFIED="1328400940169" HGAP="-30" VSHIFT="60"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Kryptografick&#253; syst&#233;m</b>
    </p>
    <p>
      Prostor zpr&#225;v (plaintext) M, &#353;ifrovan&#253;ch zpr&#225;v (ciphertext) C, &#353;ifrovac&#237;ch a de&#353;ifrovac&#237;ch kl&#237;&#269;&#367; K, K&#8217;
    </p>
    <p>
      Algoritmus generov&#225;n&#237; kl&#237;&#269;&#367; G: N &#8594; K x K&#8217;, &#353;ifrov&#225;n&#237; E: M x K &#8594; C, de&#353;ifrov&#225;n&#237; D: C x K' &#8594; M
    </p>
    <p>
      Pro k<sub>e</sub>&#8712;K a m&#8712;M je c=E<sub>ke</sub>(m), Pro k<sub>d</sub>&#8712;K&#8217; a c&#8712;M je m=D<sub>kd</sub>(c)
    </p>
    <p>
      &#8704; m&#8712;M a &#8704; k<sub>e</sub>&#8712;K mus&#237; &#8707; k<sub>d</sub>&#8712;K&#8217; tak, &#382;e: D<sub>kd</sub>(E<sub>ke</sub>(m))=m
    </p>
  </body>
</html>

</richcontent>
</node>
<node POSITION="right" ID="ID_865227331" CREATED="1328400514465" MODIFIED="1328400942340" HGAP="-20" VSHIFT="-240"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Nahodn&#233; gener&#225;tory</b>&#160;- Pou&#382;&#237;vaj&#237; se pro generov&#225;n&#237; kl&#237;&#269;&#367; pro &#353;ifry (nap&#345; RSA) a v proudov&#253;ch &#353;ifr&#225;ch.
    </p>
  </body>
</html>

</richcontent>
<node ID="ID_131992283" CREATED="1328400750747" MODIFIED="1328400796684"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>HW</b>&#160;za&#345;&#237;zen&#237; &#269;asto zalo&#382;en&#225; na jevech generuj&#237;c&#237;ch statisticky n&#225;hodn&#233; &quot;&#353;umov&#233;&quot; sign&#225;ly, nap&#345;&#237;klad z tepeln&#233;ho &#353;umu polovodi&#269;e.
    </p>
  </body>
</html>

</richcontent>
</node>
<node ID="ID_1966516011" CREATED="1328400760465" MODIFIED="1328400803934"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>SW</b>&#160;jsou zalo&#382;eny na pozorov&#225;n&#237; jev&#367; v po&#269;&#237;ta&#269;i z hlediska programu n&#225;hodn&#253;ch, &#269;asto z u&#382;ivatelsk&#233;ho vstupu (nap&#345;. PuTTYgen pou&#382;&#237;v&#225; pro generov&#225;n&#237; RSA kl&#237;&#269;e p&#345;ej&#237;zd&#283;n&#237; my&#353;&#237;).
    </p>
  </body>
</html>

</richcontent>
</node>
<node ID="ID_958266129" CREATED="1328400779669" MODIFIED="1328400930387"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Pseudon&#225;hodn&#233;</b>&#160;jsou deterministick&#233; programy generuj&#237;c&#237; posloupnost &#269;&#237;sel pokud mo&#382;no nerozli&#353;itelnou od n&#225;hodn&#233;.
    </p>
    <p>
      p&#345;. kongruen&#269;n&#237; gener&#225;tor: X_n+1 = ( a X_n + c ) mod m
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="Model &#xfa;to&#x10d;nika dle Doleva Yao" POSITION="right" ID="ID_975673589" CREATED="1328400993262" MODIFIED="1328401008465">
<node TEXT="M&#x16f;&#x17e;e z&#xed;skat libovolnou zpr&#xe1;vu putuj&#xed;c&#xed; po s&#xed;ti" ID="ID_575843066" CREATED="1328401037356" MODIFIED="1328401043262"/>
<node TEXT="Je pr&#xe1;voplatn&#xfd;m u&#x17e;ivatelem s&#xed;t&#x11b; a tud&#xed;&#x17e; m&#x16f;&#x17e;e zah&#xe1;jit komunikaci s jin&#xfd;m u&#x17e;ivatelem" ID="ID_1066361300" CREATED="1328401037356" MODIFIED="1328401048059"/>
<node TEXT="M&#x16f;&#x17e;e se st&#xe1;t p&#x159;&#xed;jemcem zpr&#xe1;v kohokoliv" ID="ID_1931229625" CREATED="1328401037356" MODIFIED="1328401053044"/>
<node TEXT="M&#x16f;&#x17e;e zas&#xed;lat zpr&#xe1;vy komukoliv zosobn&#x11b;n&#xed;m se za jin&#xe9;ho u&#x17e;ivatele" ID="ID_1223612118" CREATED="1328401037356" MODIFIED="1328401055856"/>
<node TEXT="Neumi rozume resit NP-uplne problemy (ani slozitejsi)\footnote{tzn. i slab&#x161;&#xed;: Nem&#x16f;&#x17e;e odhadnout n&#xe1;hodn&#xe9; &#x10d;&#xed;slo z dostate&#x10d;n&#x11b; velk&#xe9;ho prostoru}" ID="ID_1261621740" CREATED="1328401037356" MODIFIED="1328401063294"/>
<node TEXT="\item Bez spr&#xe1;vn&#xe9;ho kl&#xed;&#x10d;e nem&#x16f;&#x17e;e nal&#xe9;zt zpr&#xe1;vu k &#x161;ifrovan&#xe9; zpr&#xe1;v&#x11b; a nem&#x16f;&#x17e;e vytvo&#x159;it platnou &#x161;ifrovanou zpr&#xe1;vu z dan&#xe9; zpr&#xe1;vy, v&#x161;e vzhledem k n&#x11b;jak&#xe9;mu &#x161;ifrovac&#xed;mu algoritmu" ID="ID_125026122" CREATED="1328401037356" MODIFIED="1328401037356"/>
</node>
<node TEXT="" POSITION="left" ID="ID_1018329797" CREATED="1328400982309" MODIFIED="1328400982309"/>
</node>
</map>

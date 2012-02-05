<map version="0.9.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node ID="ID_1723255651" CREATED="1283093380553" MODIFIED="1328392525012"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Ha&#353;ov&#225;n&#237;</b>&#160;- Operace: SEARCH, INSERT, DELETE
    </p>
    <p>
      <b>Univerzum kl&#237;&#269;&#367; U</b>&#160;a <b>K</b>&#8838;U je mno&#382;ina pou&#382;it&#253;ch kl&#237;&#269;&#367;
    </p>
    <p>
      <b>Ha&#353;ovac&#237; funkce h: U&#8594;{0,1,..,m&#8722;1}</b>&#160;mapuje univerzum U do
    </p>
    <p>
      (men&#353;&#237;) tabulky T [0,..,m&#8722;1], |U| &gt; m
    </p>
    <p>
      <b>Kolize</b>&#160;je situace: h(k<sub>i</sub>) = h(k<sub>j</sub>), pro k<sub>i</sub>&#8800;k<sub>j</sub>; k<sub>i</sub>,k<sub>j</sub>&#8712;K
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
<hook URI="../bc/informatika/algoritmy_a_ds/obrazky/hashovani.png" SIZE="0.7508303" NAME="ExternalObject"/>
<node TEXT="snaha o efektivn&#xed; prostorovou reprezentaci a malou &#x10d;asovou n&#xe1;ro&#x10d;nost operac&#xed;" POSITION="left" ID="ID_1181092621" CREATED="1328390756106" MODIFIED="1328397206965" HGAP="80" VSHIFT="-200">
<icon BUILTIN="idea"/>
<hook NAME="FreeNode"/>
</node>
<node POSITION="right" ID="ID_160355463" CREATED="1328390764309" MODIFIED="1328393601934" HGAP="40" VSHIFT="-40"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Ha&#353;ov&#225;n&#237; separovan&#253;mi &#345;et&#283;zci</b>
    </p>
    <p>
      p&#345;i kolizi vytvo&#345;&#237;me v tabulce spojov&#253; seznam
    </p>
  </body>
</html>

</richcontent>
<hook URI="../bc/informatika/algoritmy_a_ds/obrazky/hashovani_chaining.png" SIZE="0.63423955" NAME="ExternalObject"/>
<node ID="ID_38214783" CREATED="1328392329325" MODIFIED="1328392463544"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Ha&#353;ov&#225;n&#237; s uspo&#345;&#225;dan&#253;mi &#345;et&#283;zci</b>
    </p>
    <p>
      seznamy jsou uspo&#345;&#225;d&#225;ny podle velikosti
    </p>
    <p>
      -rychlej&#353;&#237; op.SEARCH
    </p>
  </body>
</html>

</richcontent>
<node TEXT="nev&#xfd;hodou obou je nerovnom&#x11b;rn&#xe9; vyu&#x17e;it&#xed; pam&#x11b;ti&#xa;n&#x11b;kde m&#x16f;&#x17e;ou b&#xfd;t dlouh&#xe9; seznamy jinde nic" ID="ID_1595993668" CREATED="1328392596669" MODIFIED="1328392653809" HGAP="-150" VSHIFT="-110">
<icon BUILTIN="idea"/>
<hook NAME="FreeNode"/>
</node>
</node>
</node>
<node POSITION="right" ID="ID_741925582" CREATED="1328393479669" MODIFIED="1328394434825" HGAP="50" VSHIFT="-20"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Ha&#353;ov&#225;n&#237; s p&#345;emis&#357;ov&#225;n&#237;m</b>
    </p>
    <p>
      ka&#382;d&#233; pol&#237;&#269;ko m&#225; dva ukazatele (<b>prev, next</b>), jejich&#382; pomoc&#237; tvo&#345;&#237; kolizn&#237; polo&#382;ky &#345;et&#283;zec
    </p>
    <p>
      pokud kolizn&#237; polo&#382;ka zab&#237;r&#225; m&#237;sto polo&#382;ce, co na m&#237;sto dle ha&#353;e pat&#345;&#237;, je p&#345;em&#237;st&#283;na
    </p>
  </body>
</html>

</richcontent>
<hook URI="../bc/informatika/algoritmy_a_ds/obrazky/hashovani_premistovani.png" SIZE="0.60860974" NAME="ExternalObject"/>
<node TEXT="nev&#xfd;hoda: p&#x159;em&#xed;s&#x165;ov&#xe1;n&#xed; p&#x159;i INSERTu zpomaluje" ID="ID_451798405" CREATED="1328393603356" MODIFIED="1328393615981" HGAP="200" VSHIFT="-30">
<icon BUILTIN="idea"/>
<hook NAME="FreeNode"/>
</node>
<node ID="ID_1588046165" CREATED="1328394055856" MODIFIED="1328394233481" HGAP="-475" VSHIFT="150"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Hashov&#225;n&#237; se dv&#283;ma ukazateli</b>
    </p>
    <p>
      -podobn&#233;, pol&#237;&#269;ko m&#225; ukazatele n&#225;sledn&#237;k a za&#269;&#225;tek &#345;et&#283;zce (<b>begin, next</b>)
    </p>
    <p>
      -prvky se nep&#345;emis&#357;uj&#237;, m&#237;sto toho m&#367;&#382;e b&#253;t za&#269;&#225;tek p&#345;esm&#283;rov&#225;n pomoc&#237; druh&#233;ho ukazatele
    </p>
  </body>
</html>

</richcontent>
<node TEXT="zrychl&#xed; INSERT a DELETE ale zpomal&#xed; SEARCH" ID="ID_452664416" CREATED="1328394182028" MODIFIED="1328394241075" HGAP="280" VSHIFT="-30">
<icon BUILTIN="idea"/>
<hook NAME="FreeNode"/>
</node>
</node>
</node>
<node POSITION="left" ID="ID_1510315627" CREATED="1328391937090" MODIFIED="1328396948622" HGAP="-20" VSHIFT="-80"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Univerz&#225;n&#237; hashov&#225;n&#237;</b>
    </p>
    <p>
      Abychom si vylep&#353;ili na&#353;e &#353;ance &#382;e h bude fungovat dob&#345;e, zave&#271;me si obecn&#283;j&#353;&#237; t&#345;&#237;du (r&#367;znorod&#253;ch maj&#237;c&#237;ch&#160;&#160;pro |K|&#8804;m maj&#237; mal&#253; po&#269;et koliz&#237;) funkc&#237; H; ne&#382; za&#269;neme hashovat, vybereme z nich n&#225;hodnou funkci h&#8712;H (ta se stane atributem konkr&#233;tn&#237; instance hashovac&#237; tabulky).
    </p>
  </body>
</html>

</richcontent>
<node ID="ID_215390587" CREATED="1328396722090" MODIFIED="1328396951419" HGAP="420" VSHIFT="80"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>P&#345;&#237;klad:</b>
    </p>
    <p>
      h<sub>a,b</sub>(k) = ((ak + b) mod p) mod m
    </p>
    <p>
      kde p je prvo&#269;&#237;slo &gt; max(k&#8712;U)
    </p>
  </body>
</html>

</richcontent>
<hook NAME="FreeNode"/>
</node>
</node>
<node POSITION="left" ID="ID_1511330593" CREATED="1328395319200" MODIFIED="1328398804075" HGAP="10" VSHIFT="-50"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Perfektn&#237; hashov&#225;n&#237;</b>&#160;- nep&#345;ipou&#353;t&#237; kolize. Nev&#253;hoda t&#233;to metody je, &#382;e nelze dost dob&#345;e implementovat operaci INSERT, proto se d&#225; prakticky pou&#382;&#237;t pouze tam, kde p&#345;edpokl&#225;d&#225;me hodn&#283; operac&#237; MEMBER a jen velmi m&#225;lo operac&#237; INSERT. Kolize se potom daj&#237; &#345;e&#353;it t&#345;eba malou pomocnou tabulkou, kam se ukl&#225;daj&#237; koliduj&#237;c&#237; data.
    </p>
    <p>
      P&#345;&#237;klad perfektn&#237;ho ha&#353;ov&#225;n&#237; pomoc&#237; dvou&#250;rov&#328;ov&#233;ho univerz&#225;ln&#237;ho ha&#353;ov&#225;n&#237;:
    </p>
  </body>
</html>

</richcontent>
<hook URI="../bc/informatika/algoritmy_a_ds/obrazky/hashovani_perfect.jpg" SIZE="1.0" NAME="ExternalObject"/>
</node>
<node POSITION="left" ID="ID_40188479" CREATED="1328398521497" MODIFIED="1328398901715" HGAP="50" VSHIFT="-70"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Line&#225;rn&#237; hashov&#225;n&#237; (Litwin)</b>&#160;- umo&#382;&#328;uje zv&#283;t&#353;ovat hashovac&#237; tabulku ka&#382;d&#253;ch L vlo&#382;en&#237;
    </p>
    <p>
      - hashovac&#237; funkce bere posledn&#237; bity a podle toho za&#345;azuje do str&#225;nek/p&#345;ihr&#225;dek
    </p>
    <p>
      - ka&#382;d&#253;ch L vlo&#382;en&#237; roz&#353;t&#283;p&#237; p&#345;ihr&#225;dku na dv&#283; zv&#253;&#353;&#237; u nich po&#269;et posledn&#237;ch bit&#367; podle kter&#253;ch rozd&#283;luje
    </p>
  </body>
</html>

</richcontent>
<hook URI="../bc/informatika/algoritmy_a_ds/obrazky/hashovani_litwin.png" SIZE="0.47861132" NAME="ExternalObject"/>
</node>
<node POSITION="right" ID="ID_1307424824" CREATED="1328394414434" MODIFIED="1328398965512" HGAP="50" VSHIFT="-110" COLOR="#666666"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Ha&#353;ov&#225;n&#237; s line&#225;rn&#237;m p&#345;id&#225;v&#225;n&#237;m</b>
    </p>
    <p>
      -tabulka m&#225; jen kl&#237;&#269;, kolizn&#237; prvky se d&#225;vaj&#237; na prvn&#237; voln&#233; m&#237;sto
    </p>
    <p>
      -pou&#382;iteln&#233; do zapln&#283;n&#237; 75% pak moc velk&#233; shluky
    </p>
  </body>
</html>

</richcontent>
<hook URI="../bc/informatika/algoritmy_a_ds/obrazky/hashovani_linear.png" SIZE="0.56896996" NAME="ExternalObject"/>
</node>
</node>
</map>

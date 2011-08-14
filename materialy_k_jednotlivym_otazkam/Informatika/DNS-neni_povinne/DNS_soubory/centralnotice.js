
function toggleNotice() {
	var notice = document.getElementById('centralNotice');
	if (!wgNoticeToggleState) {
		notice.className = notice.className.replace('collapsed', 'expanded');
		toggleNoticeCookie('0');
	} else {
		notice.className = notice.className.replace('expanded', 'collapsed');
		toggleNoticeCookie('1');
	}
	wgNoticeToggleState = !wgNoticeToggleState;
}
function toggleNoticeStyle(elems, display) {
	if(elems)
		for(var i=0;i<elems.length;i++)
			elems[i].style.display = display;
}
function toggleNoticeCookie(state) {
	var e = new Date();
	e.setTime( e.getTime() + (7*24*60*60*1000) ); // one week
	var work='hidesnmessage='+state+'; expires=' + e.toGMTString() + '; path=/';
	document.cookie = work;
}
function pickTemplate(templates, weights, displayAnons, displayAccounts) {
	var weightedTemplates = new Array();
	var currentTemplate = 0;
	var totalWeight = 0;

	if (templates.length == 0)
		return '';
	
	while (currentTemplate < templates.length) {
		if ((wgUserName && displayAccounts[currentTemplate]) || (!wgUserName && displayAnons[currentTemplate])) {
			totalWeight += weights[currentTemplate];
			for (var i=0; i<weights[currentTemplate]; i++) {
				weightedTemplates[weightedTemplates.length] = templates[currentTemplate];
			}
		}
		currentTemplate++;
	}
	
	if (totalWeight == 0)
		return '';
	
	var randomnumber=Math.floor(Math.random()*totalWeight);
	return weightedTemplates[randomnumber];
}


var wgNoticeToggleState = (document.cookie.indexOf('hidesnmessage=1')==-1);
document.writeln("\x3cstyle type=\"text/css\"\x3e\n#centralNotice .siteNoticeSmall {display:none;}\n#centralNotice .siteNoticeSmallAnon {display:none;}\n#centralNotice .siteNoticeSmallUser {display:none;}\n#centralNotice.collapsed .siteNoticeBig {display:none;}\n#centralNotice.collapsed .siteNoticeSmall {display:block;}\n#centralNotice.collapsed .siteNoticeSmallUser {display:block;}\n#centralNotice.collapsed .siteNoticeSmallAnon {display:block;}\n#centralNotice.anonnotice .siteNoticeSmallUser {display:none !important;}\n#centralNotice.usernotice .siteNoticeSmallAnon {display:none !important;}\n\x3c/style\x3e");

wgNotice=pickTemplate(["\x3cdiv id=\"wmcz_ceny02\" style=\"border: 1px solid #ccc; font-style: normal; font-weight: normal; margin: .1em 0; padding: .2em .4em; text-align: center;\"\x3e\n\x3ca href=\"http://www.wikimedia.cz\" title=\"Wikimedia Česká republika\"\x3e\x3cimg src=\"http://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Wikimedia_Czech_Republic-logo.svg/40px-Wikimedia_Czech_Republic-logo.svg.png\" alt=\"logo Wikimedia Česká republika\" title=\"Wikimedia Česká republika\" style=\"border: none; height: 40px; margin-right: .4em; vertical-align: middle; width: 40px\" /\x3e\x3c/a\x3e \x3cstrong style=\"font-size: large;\"\x3eZlepšete obsah české Wikipedie a \x3ca href=\"http://cs.wikipedia.org/wiki/Wikipedie:Ceny_za_rozvoj_%C4%8Desk%C3%A9_Wikipedie\" title=\"Ceny za rozvoj české Wikipedie\"\x3ezískejte netbook a další ceny!\x3c/a\x3e\x3c/strong\x3e\n\x3c/div\x3e", "\x3cdiv id=\"wmcz_ceny02\" style=\"border: 1px solid #ccc; font-style: normal; font-weight: normal; margin: .1em 0; padding: .2em .4em; text-align: center;\"\x3e\n\x3ca href=\"http://www.wikimedia.cz\" title=\"Wikimedia Česká republika\"\x3e\x3cimg src=\"http://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Wikimedia_Czech_Republic-logo.svg/40px-Wikimedia_Czech_Republic-logo.svg.png\" alt=\"logo Wikimedia Česká republika\" title=\"Wikimedia Česká republika\" style=\"border: none; height: 40px; margin-right: .4em; vertical-align: middle; width: 40px\" /\x3e\x3c/a\x3e \x3cstrong style=\"font-size: large;\"\x3eRozšiřte českou Wikipedii! \n\x3ca href=\"http://cs.wikipedia.org/wiki/Wikipedie:Ceny_za_rozvoj_%C4%8Desk%C3%A9_Wikipedie\" title=\"Ceny za rozvoj české Wikipedie\"\x3eNejlepší autoři získají netbook!\x3c/a\x3e\x3c/strong\x3e\n\x3c/div\x3e", "\x3c!-- This notice template is intentionally left blank. It serves as a complement to 100 % if other template (or sum of other templates) is supposed to be diplayed in less than 100 % of views. --\x3e"],[25, 25, 0],[1, 1, 1],[1, 1, 1]);
if (wgNotice != '')
wgNotice='<div id="centralNotice" class="' + (wgNoticeToggleState ? 'expanded' : 'collapsed') + '">' + wgNotice+'</div>';

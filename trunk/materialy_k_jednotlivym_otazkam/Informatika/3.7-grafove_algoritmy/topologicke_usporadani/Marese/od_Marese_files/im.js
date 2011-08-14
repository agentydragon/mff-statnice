function getRes () {
	return window.screen.width;
}


var im = {
	hideSky : getRes() < 1024 ? true : false,
	adAdress : 'http://ad.seznam.cz',
	adCok : navigator.cookieEnabled ? 1 : 0,
	adRef : escape(document.referrer.substr(0, document.referrer.indexOf("/", 7)) || document.referrer),
	adLang : navigator.language ? navigator.language.substr(0,2) :((navigator.language != '') ? navigator.systemLanguage.substr(0,2) : ''),
	adCharset : 'iso-8859-2',
	ads : new Object(),
	adsFolder : new Object(),
	cnt : 0,
	replaceFlag : false,
	params : new Array('zoneId','section','collocation','source','skyFlag','passons'),
	maxUrlLength :2046,


	// ***************************************************
	// vypsani SPANu s unikatnim ID pozice,
	// zjisteni parentID pro danou pozici
	// skyFlag == arguments[4] - urcuje zda se bude pri
	//     nizkem rozliseni schovat sky
	// ***************************************************
	position : function (zoneId, section, collocation, source, skyFlag, passons) {
		if((arguments[4] && this.hideSky != true) || !arguments[4]) {
			x = this.cnt;
			this.ads[x] = new Object();
			for (var i=0;i<this.params.length;i++) {
				parValue = eval(this.params[i]);
				if (parValue) this.ads[x][this.params[i]] = parValue;
			}
			document.write('<div id="ad-'+x+'" style="display:none;" class="adDBox"></div>');
			this.cnt += 1;

			var thisDiv = this._gE('ad-'+x);
			if (thisDiv) {
				this.adsFolder['ad-'+x] = new Array();
				this.adsFolder['ad-'+x]['position'] = thisDiv.parentNode.id;
			}
		}
	},

	/* vyrobi sadu pozic, identicky s im.position() */
	positionMulti: function(definition) {
		for (var id in definition) {
			var parent = document.getElementById(id);
			if (!parent) { continue; }

			var adDefinition = definition[id];
			if (adDefinition.skyFlag && this.hideSky) { continue; }
			var obj = {};
			for (var p in adDefinition) { obj[p] = adDefinition[p]; }
			this.ads[this.cnt] = obj;

			var div = document.createElement("div");
			var childId = "ad-"+this.cnt;
			div.id = childId;
			div.style.display = "none";
			div.className = "adDBox";
			parent.appendChild(div);

			this.adsFolder[childId] = {position:id};
			this.cnt++;
		}
	},

	// ***************************************************
	// Nacteni DAT z reklamniho systemu
	// ***************************************************
	loadAds : function () {
		var x=0;
		var qS = new String();
		for (i in this.ads) {
			if (qS.length > 1900) {
				document.write('<scr'+'ipt type="text/javascript" src="'+this.adAdress + "/javascript?mode=generic"+qS+"&amp;cookieEnabled=" + this.adCok + "&amp;referer=" + this.adRef + "&amp;lang=" + this.adLang+"&amp;charset=" + this.adCharset + '"></scr'+'ipt>');
				qS = '';
			}
			for (var j=0;j<this.params.length;j++) {
			    /*- Passons - predavani promennych reklamni pozici -*/
			    if(this.params[j] == 'passons'){
                    for(p in this.ads[x][this.params[j]]){
				        parValue = this.ads[x][this.params[j]][p];
				        if(parValue) qS += '&amp;passon-'+x+'.'+p+'='+parValue;
					}
				} else {
					parValue = this.ads[x][this.params[j]];
					if (parValue) qS += '&amp;'+this.params[j]+'-'+x+'='+parValue;
				}
			}
			x+=1;
		}
		document.write('<scr'+'ipt type="text/javascript" src="'+this.adAdress + "/javascript?mode=generic"+qS+"&amp;cookieEnabled=" + this.adCok + "&amp;referer=" + this.adRef + "&amp;lang=" + this.adLang+"&amp;charset=" + this.adCharset + '"></scr'+'ipt>');
	},

	// ***************************************************
	// Vypsani reklam do stranky; dynamicke reklamy
	// ulozime do uloziste
	// ***************************************************
	setAd : function (id,kod) {
		var adId = 'ad-'+id;
		var adParent = this._gE(adId).parentNode;
		if (kod.indexOf('<script') == -1) {
			if (this._gE(adId)) {
				if (kod) {
					this._gE(adId).innerHTML = kod;
					if(kod.indexOf('/impress?spotId=') != -1) {
						adParent.className = adParent.className == "" ? 'adFull' : adParent.className + ' adFull';
						this._gE(adId).style.display = 'block';
					} else {
						adParent.className = adParent.className == "" ? adParent.id+'Empty' : adParent.className + ' '+adParent.id+'Empty';
					}
				}
				if (this.adsFolder[adId]) this.adsFolder[adId]['code'] = null;
			}
		} else {
			if (this.adsFolder[adId]) this.adsFolder[adId]['code'] = kod;
		}
	},

	// ***************************************************
	// Pro dynamicke reklamy vypise kod do stranky
	// do daneho DIVu i ID "${pozice}Box"
	// ***************************************************
	writeAd : function(pozice) {
		for (x in this.adsFolder) {
			if ((this.adsFolder[x]['code'] != null) && (this.adsFolder[x]['position'] == pozice)) {
				//document.write('<div id="'+x+'-box" class="adDBox"></div>');
				document.write('<div id="'+x+'-box" class="adDBox">'+this.adsFolder[x]['code']+'</div>');
				var thisDiv = this._gE(x+'-box');
				if (thisDiv) {
					this.adsFolder[x]['replacePosition'] = pozice+'Box';
					thisDiv.parentNode.id = this.adsFolder[x]['replacePosition'];

				}
			}
		}
	},

	// ***************************************************
	// Presuneme reklamy, ktere jsme museli vypsat
	// do stranky, protoze obsahovaly <script>
	// ***************************************************
	placeAds : function () {
		for (x in this.adsFolder) {
			if (this.adsFolder[x]['code'] != null) {
				var kam = this._gE(this.adsFolder[x]['position'])
				kam.innerHTML = '';
				kam.className = kam.className == "" ? 'adFull' : kam.className + ' adFull';
				var co = this._gE(this.adsFolder[x]['replacePosition']);
				var scriptFlag	= co.getElementsByTagName('SCRIPT');
				for ( k = 0; k < scriptFlag.length; k++ ) {
					scriptFlag[k].parentNode.removeChild(scriptFlag[k]);
					k = k - 1;
				}

				if(co.outerHTML) {
					var styleFlag = co.getElementsByTagName('STYLE');

					while(styleFlag.length) {
						document.getElementsByTagName("head")[0].appendChild(styleFlag[0]);
					}
				}
				kam.appendChild(co);
				co.style.display='block';
			}
		}

		/*var dF = window._advertUserDisturbFlag; - Zara resolve*/
		var dT = window._advertUserDisturbType;
		var dA = window._advertDisturbField;
		var agreesiveFormats = ['popup','interstitial','ilayer','wide','sky'];

		var agressiveDisturbNow = false;
		/* muzu vubec neco automaticky ukazat*/
		if(typeof dF != 'undefined') {
			if(dF == false) {
				/*- projdu pole formatu, je setrizene pokde priority*/
				for(var x=0;x < agreesiveFormats.length;x++) {
					/*- nasel jsem format v asociativnim poli banneru ktere jsou na strance*/
					if(typeof dA[agreesiveFormats[x]] != 'undefined') {
						/*- banner se muze ukazat neni posledne zobrazeny*/
						if(agreesiveFormats[x] != dT) {
							/*- a jeste nikdy nevyslocil*/
							if(document.cookie.indexOf(dA[agreesiveFormats[x]].cookieName) == -1) {
								dA[agreesiveFormats[x]].startDisturbObject[dA[agreesiveFormats[x]].startDisturbFunction]();
								agressiveDisturbNow = true;
								break;
							}
						}
					}
				}
				/*- prosel jsem cele pole, ale nic jsem neukazal tak jeste zkusim banner ktery byl nastaveny jako zakazany*/
				if(x == agreesiveFormats.length && !agressiveDisturbNow && typeof dA[_advertUserDisturbType] != 'undefined') {
					dA[_advertUserDisturbType].startDisturbObject[dA[_advertUserDisturbType].startDisturbFunction]();
				}
			}
		}
	},

	/* seznam callbacku pro ajaxove reklamy */
	ajaxCallbacks : {},
	
	/* zadost o reklamu dynamicky vydanou za behu stranky */
	ajaxAd : function(callback, zoneId, section, collocation,source,passons) {
		
		var zones = this._parseAjaxArgs(zoneId);
		var sections = this._parseAjaxArgs(section);
		var collocations = this._parseAjaxArgs(collocation);
		var sources = this._parseAjaxArgs(source);
		var passonsArray = this._parseAjaxArgsFromStruct(this._parseAjaxArgs(passons));
		
		var test = this._ajaxTestAdData(zones.length,
				[sections.length,
				collocations.length,
				sources.length,
				passonsArray.length]);
		
		var qs = [];
		var counter = 0;
		for(var i = 0; i < zones.length; i++){
			if (!(zones[i] in this.ajaxCallbacks)) { this.ajaxCallbacks[zones[i]] = []; }
			this.ajaxCallbacks[zones[i]].push(callback) /* ulozime referenci do zasobniku pro dane zoneId pro pozdejsi volani */
			
			var obj = {	
				'zoneId' : zones[i],
				'section' : this._getArrayItem(sections,i),
				'collocation' : this._getArrayItem(collocations,i), 
				'source' : this._getArrayItem(sources,i),
				'passons' : this._getArrayItem(passonsArray,i)
			};
			
			var str = this._getAjaxItem(counter,obj).join("&");	
		
			if(qs.length && this._ajaxAdSend(qs,str)){
				qs = [];
				counter = 0;
				qs.push(this._getAjaxItem(counter,obj).join("&"));	
			} else { 
				counter++;
				qs.push(str);
			}
		}
		this._ajaxAdSend(qs);
	},
	
	/* vrati prvek pole nebo null*/
	_getArrayItem : function(arr,index){
		var len = arr.length;
		return len ? arr[index % len] : null;
	},
	
	/* prevde argument na pole*/
	_parseAjaxArgs : function(data){
		return data ? (data instanceof Array ? data : [data]) : [];
	},
	
	/* argument passons zretezi do sablony a vlozi do pole nebo vrati prazdne pole */
	_parseAjaxArgsFromStruct : function(data){
		if(!data){
			return [];
		}
		var out = [];
		for(var i = 0; i < data.length; i++){
			var obj = data[i];
			var str = '';
			for(var j in obj){
				str += (i ? '&' : '') + 'passon-${index}.' + j + '=' + encodeURIComponent(obj[j]);
			}
			out.push(str)
		}
		return out;
	},
	
	/*  testuji delku poli vytvorenych ze vstupnich argumentu ajaxAd*/
	_ajaxTestAdData	: function(master,slaves){
		if(master > 1){
			for(var i = 0; i < slaves.length; i++){
				if((slaves[i] > 1) && (slaves[i] < master)){
					throw new Error("im.ajaxAd - wrong arguments");
				}
			}
		}
	},
	
	/* zretezi data pro jednu zonu a doplni passons o spravny index */
	_getAjaxItem : function(index,obj){
		var out = [];
		for(var i in obj){
			if(obj[i] !== null){
				if(i == 'passons'){
					out.push(obj[i].replace(/passon-\${index}./g,'passon-' + index + '.'));
				} else {
					out.push(i + "-" + index + "=" + encodeURIComponent(obj[i]));
				}
			}
		}
		return out;			
	},
	
	/* zkontroluje delku url s novou zonou a bud posle request na url bez nove  zony nebo vrati novou polozku*/
	_ajaxAdSend : function(items,newItem){
		var srcTmp = this.adAdress + "/javascript?mode=ajax&${queryString}&cookieEnabled=" + this.adCok + "&referer=" + this.adRef + "&lang=" + this.adLang+"&charset=" + this.adCharset + "&r=" + Math.random().toFixed(6);
		
		var address = srcTmp.replace(/\$\{queryString\}/,items.join("&"));
		
		if(!newItem || ((address.length + newItem.length) > this.maxUrlLength)){
			var s = document.createElement("script");
			s.type = "text/javascript";
			s.src = address;
			document.body.insertBefore(s, document.body.firstChild);
			return true;
		} else {
			return false;
		}
	},

	/* prisla odpoved na ajax reklamu, vykonat callback */
	ajaxResponse : function(obj) {
		for (var p in obj) {
			if (p in this.ajaxCallbacks) {
				var data = obj[p];
				var cb = this.ajaxCallbacks[p].pop();
				cb(data, p);
			}
		}
	},

	_gE : function (id) {
		return document.getElementById(id);
	},
	
	/*  flashplayer si zada o reklamu */
	videoAds: function(id, zoneId, section, collocation) {
		var zoneIds = zoneId.split(",");
		var sections = section.split(",");
		var collocations = collocation.split(",");
		
		var counter = zoneIds.length;
		var data = {};
		
		function callback(str, zoneId) {
			counter--;
			var type = zoneId.split(".").pop().replace(/-/g,"");
			var result = im._parseVideoAd(str);
			if (result) { data[type] = result; }
			
			if (!counter) { 
				var fl = document.getElementById(id);
				if (!fl) { return; }
				var embeds = fl.getElementsByTagName("embed");
				if (embeds.length) { fl = embeds[0]; }
				fl.setAds(data);
			}
		}
		
		im.ajaxAd(callback, zoneIds, sections, collocations);
		return true; /* tohle playeru rekne, ze o reklamu bylo pozadano, at to znova nezkousi */
	},
	
	/* vrati objekt nebo null pro videoodpoved od reklamniho serveru */
	_parseVideoAd: function(str) {
		var json = str;
		var comments = [];
		
		json = json.replace(/<!--(.*?)-->/g, function(comment, inner) {
			comments.push(inner);
			return "";
		}); /* spir komentare */
		

		for (var i=0;i<comments.length;i++) { /* presunout komentare do stranky */
			var c = comments[i];
			var comment = document.createComment(c);
			document.body.appendChild(comment);
		}
		
		json = json /* vyresolvit entity */
				.replace(/&amp;/g, "&")
				.replace(/&lt;/g, "<")
				.replace(/&gt;/g, ">")
				.replace(/&quot;/g, "\"")
				.replace(/&apos;/g, "'");

		/* pokud jsou data tvorena jen obrazkem, je to varianta MISS */
		var r = json.match(/^\s*<img *src *= *(['"])(.*?)\1[^>]*\/>\s*$/);
		
		if (r) { return [{ miss: r[2] }]; }
		
		json = json.replace(/<img.*?\/>/g, ""); /* nahodne zustale obrazky */
		json = json.replace(/}\s*{/g, "},{"); /* vicenasobna pozice */
		if (json.match(/^[\s]*$/)) { return null; } /* prazdno */
		var arr = eval("["+json+"]");
		return arr;
	}

}


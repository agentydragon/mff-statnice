
not(P):-P,!,fail.	% kdyz P uspeje, uspeje i rez (a zakaze backtrack tzn. nezkousi se uz k not(_). ) 
			% a nakonec se zavola fail a a cely pravidlo selze
not(_).			% pokud P neuspeje pusti se tohle a vrati yes :)

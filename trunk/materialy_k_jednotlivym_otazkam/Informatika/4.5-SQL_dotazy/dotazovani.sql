-- kartezsky soucin dvou tabulek
/*
SELECT *
FROM TZkouska, TZapis
*/

-- jako kdybych pouzil JOIN pres 'zid'
/*
SELECT *
FROM TZkouska zk, TZapis za
WHERE zk.zid = za.zid
*/

-- vyber id a jmena studenta s konkretnim datem narozeni (je matouci zorientovat se v tom, co je mesic a co den)
/*
SELECT sid, jmeno
FROM TStudent
WHERE rok_narozeni = '11.4.1984'
*/

-- spojeni dvou tabulek (zalezi na poradi - podle toho vypada i vysledna)
/*
SELECT *
FROM TZkouska zk /* LEFT/RIGHT/FULL */ JOIN TZapis za ON zk.zid = za.zid
*/

-- poziti GROUP BY a vypis toho stejneho sloupce
/*
SELECT sid
FROM TZapis
GROUP BY sid
*/

-- vypis jmen studentu a pocet zkousek, na ktere jsou zapsani
SELECT st.jmeno, COUNT(zid) AS 'pocet zkousek'
FROM TStudent st, TZapis za
WHERE st.sid = za.sid
GROUP BY st.jmeno



-- vypis jmen vsech studentu, kteri nejsou zapsani na zadne zkousce
/*
SELECT *
FROM TStudent st
WHERE NOT EXISTS (
	SELECT *
	FROM TZapis za
	WHERE st.sid = za.sid
)
*/

-- vypis vsech mistnosti do kterych ma prijit 'Marek Maly' na zkousku
/*
SELECT mistnost
FROM TStudent st, TZapis za, TZkouska zk
WHERE st.sid = za.sid AND
	za.zid = zk.zid AND
	st.jmeno = 'Marek Maly'
*/

-- pocet studentu, kteri jsou rocnik 88 nebo starsi a meli zkousku v 'S6'
-- pouzil se 2x JOIN na spojeni 3 tabulek
/*
SELECT COUNT(*)
FROM TStudent AS s JOIN TZapis AS z ON s.sid=z.sid JOIN TZkouska AS e ON z.zid=e.zid
WHERE s.rok_narozeni<'1989' AND
	e.mistnost='S6' 
*/

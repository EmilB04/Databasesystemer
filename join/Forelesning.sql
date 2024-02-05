-- Kundeliste sortert på poststed -- 
SELECT * 
FROM kunde, post
WHERE post_nr = nr
ORDER BY sted;

SELECT * 
FROM kunde 
INNER JOIN post ON post_nr = nr
ORDER BY sted;

-- Salg pr kunde av hvert garn, sortert på kundenavn --
SELECT navn, garn_produsent, garn_navn, SUM(antall)	AS tot_antall	
FROM ordre AS o, kunde k /*Kunde AS k*/
WHERE o.kunde_id = k.id
GROUP BY kunde_id, garn_produsent, garn_navn
ORDER BY navn;

-- Totalpris per ordre -- 
SELECT kunde_id, garn_produsent, garn_navn, dato, SUM(antall*pris) AS totalpris	
FROM ordre AS o, garn
WHERE o.garn_produsent = produsent
AND garn_navn = navn
GROUP BY kunde_id, garn_produsent, garn_navn, dato
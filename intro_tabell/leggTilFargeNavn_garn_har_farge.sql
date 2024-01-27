SELECT garn_produsent, garn_navn, farge_id, navn 
FROM forelesning.garn_har_farge JOIN forelesning.farge ON farge_id = id;

SELECT garn_produsent, garn_navn, COUNT(farge_id) FROM garn_har_farge GROUP BY garn_produsent, garn_navn;

/*CREATE TABLE garn_historikk LIKE garn;*/

/*INSERT INTO garn_historikk (
	SELECT * FROM garn
);*/

UPDATE garn
SET pris = pris * 1.2
WHERE (produsent, navn) IN (
	SELECT garn_produsent, garn_navn FROM ordre 
    GROUP BY garn_produsent, garn_navn
    HAVING count(*) > 1
	)
;
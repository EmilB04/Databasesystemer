-- Opprett view -- 
CREATE VIEW salg AS 
SELECT k.navn AS kunde, adresse, post_nr, g.produsent, g.navn AS garn, antall, pris, dato
FROM ordre o, kunde k, garn g
WHERE o.kunde_id = k.id
AND o.garn_produsent = g.produsent
AND o.garn_navn = g.navn;

-- Hent ut SUM av salg i Østfold -- 
SELECT SUM(antall*pris) as salg_i_Østfold
FROM salg 
WHERE post_nr BETWEEN 1500 AND 1894;
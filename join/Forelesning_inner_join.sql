SELECT g1.produsent, g1.navn, /*f.navn,*/ g2.produsent, g2.navn, g1.vekt, g2.vekt, g1.lopemeter, g2.lopemeter
FROM garn g1 INNER JOIN garn g2 ON (g1.produsent, g1.navn) < (g2.produsent, g2.navn)
/*INNER JOIN garn_har_farge ghf ON (g1.produsent, g1.navn) = (ghf.garn_produsent, ghf.garn_navn)
INNER JOIN farge f ON ghf.farge_id = f.id*/
WHERE g1.vekt = g2.vekt
AND g1.lopemeter > 120
AND g2.lopemeter > 120;
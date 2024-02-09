-- Finn ut om flere garn av samme merke har samme pris -- 
SELECT g1.produsent, g1.navn, g2.produsent, g2.navn, g1.pris
FROM garn g1
INNER JOIN garn g2
ON (g1.produsent, g1.navn) <> (g2.produsent, g2.navn)
WHERE g1.pris = g2.pris;
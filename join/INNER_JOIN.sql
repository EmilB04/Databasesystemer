-- Hvilke kunder har lagt inn bestilling før i dag som består av flere enn 10 nøster -- 
SELECT k.navn, o.garn_produsent, o.garn_navn, o.antall, o.dato
FROM kunde k INNER JOIN ordre o ON k.id = o.kunde_id
WHERE antall >= 10
AND dato < curdate();

-- Hvilke garn som koster mer enn 60kr finnes i fargen hvit -- 
SELECT g.produsent, g.navn, f.navn
FROM garn_har_farge ghf
INNER JOIN farge f ON ghf.farge_id = f.id
INNER JOIN garn g ON ghf.garn_produsent = g.produsent
AND ghf.garn_navn = g.navn
WHERE g.pris > 60
AND f.navn = "hvit";

-- Antall ordre pr kunde --
SELECT k.id, k.navn, COUNT(*) AS antall_ordrer
FROM kunde k INNER JOIN ordre o ON k.id = o.kunde_id
GROUP BY k.id, k.navn;

-- Hente ut snitt for hver kategori -- 
SELECT pinnestorrelse, lopemeter, AVG(pris) as snitt
FROM garn
GROUP BY pinnestorrelse;

-- Totalt varekjøp pr. kunde -- 
SELECT k.id, k.navn, SUM(pris)
FROM kunde k 
INNER JOIN ordre o on k.id = o.kunde_id
INNER JOIN garn g on g.produsent = o.garn_produsent
and g.navn = o.garn_navn
GROUP BY k.id, k.navn;
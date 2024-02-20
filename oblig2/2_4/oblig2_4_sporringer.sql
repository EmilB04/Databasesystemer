-- Vis alle unike fødselsår sortert fra lavest til høyest. -- 
SELECT DISTINCT YEAR(fodselsdag) as fødselsår
FROM oblig_1_2
ORDER BY YEAR(fodselsdag) ASC;

-- Vis alle fornavn fra pasient tabellen som kun finnes en gang. -- 
SELECT fornavn
FROM oblig_1_2
GROUP BY fornavn
HAVING COUNT(*) = 1;

-- Vis id og fornavn til alle pasienter som har et fornavn som starter og slutter med en s, og som er minst 6 bokstaver langt. --
SELECT pasient_id, fornavn 
FROM oblig_1_2
WHERE length(fornavn) >=6 and
fornavn LIKE "s%s";

-- Vis id, fornavn og etternavn for alle pasienter med demens (Dementia). -- 
SELECT i.pasient_id, o.fornavn, o.etternavn
FROM innleggelser i INNER JOIN oblig_1_2 o ON i.pasient_id = o.pasient_id
WHERE diagnose = "Dementia"
ORDER BY pasient_id;

-- Lag en liste av alle pasienters fornavn. Listen skal først sorteres basert på navnets lengde, så alfabetisk. -- 
SELECT fornavn
FROM oblig_1_2
ORDER BY length(fornavn), fornavn;

/*Vis fornavn, etternavn og allergier til en pasient hvis pasienten er allergisk mot penselin (Penicillin) eller morfin (Morphine). 
Resultatene skal sorterer alfabetisk først på allergi, fornavn og etternavn.*/
SELECT fornavn, etternavn, allergier
FROM oblig_1_2
WHERE allergier in ('Penicillin', 'Morphine')
ORDER BY allergier, fornavn, etternavn;
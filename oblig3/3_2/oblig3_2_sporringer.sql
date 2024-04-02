-- Vis alle dagene i måneden (eks. 1-31) og hvor mange innleggelser som var på de forskjellige dagene. Sorter fra dagene med flest innleggelser til dagene med færrest innleggelser. --
SELECT DATE_FORMAT(innleggelsesdato, "%e") as dag, count(*) as antall_innleggelser
FROM innleggelser
GROUP BY dag
ORDER BY antall_innleggelser DESC, dag;

-- Vis alle kolonner for pasient 442 sin forrige innleggelse. -- 
SELECT *
FROM innleggelser
WHERE pasient_id = 442
AND innleggelsesdato <= ( /*kun '<' hvis det hadde vært flere inneggelser*/
	SELECT MAX(innleggelsesdato)
    FROM innleggelser
    WHERE pasient_id = 442
)
ORDER BY innleggelsesdato DESC;

-- Vis pasient ID, lege ID og diagnose for de innleggelsene som oppfyller ett av to kriterier: --
-- Pasient ID er et oddetall og lege ID er enten 1, 5 eller 19 --
-- Lege ID inneholder tallet 2 og pasient ID må bestå av 3 tall -- 
SELECT pasient_id, lege_id, diagnose
FROM innleggelser
WHERE 
	(pasient_id %2 != 0 and lege_id in (1,5,19))
    OR
    (lege_id LIKE "%2%" and length(pasient_id) = 3);

-- Vis fornavn, etternavn, og antall innleggelser hver lege har håndtert. Hver innleggelse er håndtert av en lege. -- 
SELECT l.fornavn, l.etternavn, COUNT(i.innleggelsesdato) as antall_håndteringer
FROM leger l
JOIN innleggelser i ON l.lege_id = i.lege_id
GROUP BY l.fornavn, l.etternavn;

-- For hver lege, vis ID, fullt navn samt første og siste innleggelsesdato de håndterte -- 
SELECT l.lege_id, CONCAT(l.fornavn, ' ', l.etternavn) AS fullt_navn, MIN(i.innleggelsesdato) AS første_innleggelsesdato, MAX(i.innleggelsesdato) AS siste_innleggelsesdato
FROM leger l
JOIN innleggelser i ON l.lege_id = i.lege_id
GROUP BY l.lege_id, fullt_navn;

-- Vis totalt antall pasienter for hver provins (ved navn). Sorter fra høyest til lavest antall -- 
SELECT pmp.provins_id, p.provins_navn, COUNT(*) as totalt_antall_pasienter
FROM pasienter_med_provins as pmp
JOIN provins p ON pmp.provins_id = p.provins_id
GROUP BY pmp.provins_id, p.provins_navn
ORDER BY totalt_antall_pasienter DESC;

-- For hver innleggelse, vis en pasients fulle navn, deres diagnose og det fulle navnet til legen som satt diagnosen -- 
SELECT CONCAT(pmp.fornavn, ' ', pmp.etternavn) AS pasient_navn, i.diagnose, CONCAT(l.fornavn, ' ', l.etternavn) AS lege_navn
FROM innleggelser i
JOIN leger l ON i.lege_id = l.lege_id
JOIN pasienter_med_provins pmp ON i.pasient_id = pmp.pasient_id;

-- Vis antall duplikate pasienter basert på fornavn og etternavn. Vis dette kun for de der det finnes duplikater -- 
SELECT fornavn, etternavn, COUNT(*) as duplikater
FROM pasienter_med_provins
GROUP BY fornavn, etternavn
HAVING COUNT(*) > 1;

-- Vis pasientenes fulle navn, høyde i fot avrundet til ett tall etter komma, vekt i pund avrundet til ingen desimaler, fødselsnummer og kjønn(ikke forkortet).  -- 
SELECT CONCAT(pmp.fornavn, ' ', pmp.etternavn) AS navn,
       ROUND(hoyde/30.48, 1) AS hoyde_i_fot,
       ROUND(vekt * 2.205) AS vekt_i_pund,
       fodselsdag,
       IF(kjonn = 'M', 'Mann', 'Dame') AS kjonn
FROM pasienter_med_provins pmp;

-- Vis pasient ID, fornavn og etternavn for pasienter som aldri har vært innlagt. -- 
SELECT pasient_id, fornavn, etternavn
FROM pasienter_med_provins
WHERE pasient_id NOT IN 
	(SELECT pasient_id FROM innleggelser);
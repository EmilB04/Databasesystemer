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
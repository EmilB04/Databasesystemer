-- Vis totalt antall mannlige pasienter og kvinnelige pasienter som ligger i pasient tabellen. Vis begge resultatene i samme rad. -- 
SELECT 
    (SELECT COUNT(*) FROM pasienter_med_provins WHERE kjonn = 'M') AS totalt_mannlige_pasienter,
    (SELECT COUNT(*) FROM pasienter_med_provins WHERE kjonn = 'F') AS totalt_kvinnelige_pasienter;

-- Vis pasient_id og diagnose for alle som har vært innlagt flere ganger med samme diagnose --
SELECT pasient_id, diagnose
FROM innleggelser
GROUP BY pasient_id, diagnose
HAVING COUNT(*) > 1;

-- Vis sted og antall pasienter tilknyttet dette stedet. Sorter listen fra flest til færrest pasienter, så alfabetisk på stedsnavnet. --
SELECT sted, COUNT(pasient_id) as antall_pasienter
FROM pasienter_med_provins
GROUP BY sted
ORDER BY antall_pasienter DESC, sted ASC;

-- Vis fornavn, etternavn og rolle for alle personer i databasen. Rollen er enten Pasient eller Lege --   
SELECT fornavn, etternavn, 'Pasient' AS rolle
FROM pasienter_med_provins
UNION /*Fikk hjelp av CHAT GPT med denne*/
SELECT fornavn, etternavn, 'Lege' AS rolle
FROM leger
ORDER BY fornavn;

-- Vis alle allergier sortert på antall. Fjern NKA-verdier fra spørringen. -- 
SELECT allergier, COUNT(*) as antall
FROM pasienter_med_provins
WHERE allergier not in ("null", "nka")
GROUP BY allergier
ORDER BY antall asc;

-- For alle pasienter født på 1970-tallet vis fornavn, etternavn og fødselsdato. Sorter listen fra tidligst født til senest født. -- 
SELECT fornavn, etternavn, fodselsdag
FROM pasienter_med_provins
WHERE fodselsdag BETWEEN '1970-01-01' AND '1979-12-31'
ORDER BY fodselsdag asc;



-- Vi vil vise pasientens fulle navn i en kolonne. Etternavn med bare store bokstaver og fornavnet med små bokstaver. Skill fornavn og etternavn med komma. Sorter listen på fornavn fra å-a. Eks. : SMITH,jane -- 
SELECT CONCAT(UPPER(etternavn), ',', LOWER(fornavn)) AS fullt_navn
FROM pasienter_med_provins
ORDER BY fornavn DESC;


-- Vis provins_id og sum av høyder på pasientene som bor i denne provinsen. Kun de provinsene hvor total høyde er større eller lik 7000 cm skal inkluderes. -- 
SELECT provins_id, SUM(hoyde) AS total_hoyde_i_cm
FROM pasienter_med_provins
GROUP BY provins_id
HAVING SUM(hoyde) >= 7000
ORDER BY provins_id;


-- Vis forskjellen mellom største og minste vekt for pasienter med etternavn Maroni. -- 
SELECT MAX(vekt) - MIN(vekt) AS forskjell_vekt
FROM pasienter_med_provins
WHERE etternavn = "Maroni";
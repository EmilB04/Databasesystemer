-- Vis totalt antall mannlige pasienter og kvinnelige pasienter som ligger i pasient tabellen. Vis begge resultatene i samme rad. -- 
SELECT 
    (SELECT COUNT(*) FROM oblig_1_2 WHERE kjonn = 'M') AS totalt_mannlige_pasienter,
    (SELECT COUNT(*) FROM oblig_1_2 WHERE kjonn = 'F') AS totalt_kvinnelige_pasienter;



-- Vis pasient_id og diagnose for alle som har vært innlagt flere ganger med samme diagnose --
SELECT pasient_id, diagnose
FROM innleggelser
-- ikke ferdig --
;


-- Vis sted og antall pasienter tilknyttet dette stedet. Sorter listen fra flest til færrest pasienter, så alfabetisk på stedsnavnet. --




-- Vis fornavn, etternavn og rolle for alle personer i databasen. Rollen er enten Pasient eller Lege --   




-- Vis alle allergier sortert på antall. Fjern NKA-verdier fra spørringen. -- 





-- For alle pasienter født på 1970-tallet vis fornavn, etternavn og fødselsdato. Sorter listen fra tidligst født til senest født. -- 




-- Vi vil vise pasientens fulle navn i en kolonne. Etternavn med bare store bokstaver og fornavnet med små bokstaver. Skill fornavn og etternavn med komma. Sorter listen på fornavn fra å-a. Eks. : SMITH,jane -- 




-- Vis provins_id og sum av høyder på pasientene som bor i denne provinsen. Kun de provinsene hvor total høyde er større eller lik 7000 cm skal inkluderes. -- 




-- Vis forskjellen mellom største og minste vekt for pasienter med etternavn Maroni. -- 
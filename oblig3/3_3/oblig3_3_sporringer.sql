-- Vis alle pasientene gruppert i vektgrupper. Vis hvor mange pasienter som finnes i hver vektgruppe. Listen skal sorteres med den tyngste vektgruppen først, ned til den letteste. Feks. hvis en person veier fra 90-99 kg plasseres de i vektgruppe 90. -- 
-- Oppgave 1 -- 
SELECT
    vektgruppe,
    COUNT(*) AS antall_pasienter
FROM (
    SELECT
        CONCAT(FLOOR(vekt / 10) * 10, '-', FLOOR(vekt / 10) * 10 + 9) AS vektgruppe,
        FLOOR(vekt / 10) AS sortering
    FROM pasienter_med_provins
) AS vektgrupper
GROUP BY vektgruppe, sortering
ORDER BY sortering DESC;

-- Vis pasient ID, vekt, høyde og erOvervektig fra pasient tabellen. ErOvervektig skal vises som en boolean, altså 0 eller 1. Overvektig er definert som vekt(kg)/høyde(m)^2 >= 30. Merk at vekt er i kg og høyde i cm i tabellen.-- 
/*Regner ut BMI*/
-- Oppgave 2 -- 
SELECT 
    pasient_id, 
    vekt, 
    hoyde, 
    /* 1 for True, 0 for False*/
    IF(vekt / POWER(hoyde / 100, 2) >= 30, 1, 0) AS erOvervektig
FROM pasienter_med_provins;


-- Oppgave 3 -- 
-- Vis pasient id, fornavn, etternavn og behandlende leges spesialitet. Vis kun de pasientene som som har diagnose epilepsi (Epilepsy) og hvor legens fornavn er Lisa. -- 
SELECT i.pasient_id, pmp.fornavn, pmp.etternavn, l.spesialitet
FROM innleggelser i
JOIN pasienter_med_provins pmp on i.pasient_id = pmp.pasient_id
JOIN leger l on i.lege_id = l.lege_id
WHERE diagnose = "Epilepsy" and l.fornavn = "Lisa"
ORDER BY l.lege_id;

-- Oppgave 4 -- 
-- Alle pasienter som har vært innlagt kan se sine egne medisinske dokumenter. Pasientene får derfor et midlertidig passord etter første innleggelse. vis pasient id og midlertidig passord. --
-- Passordet er som følgende: pasient_id, lengden av pasientens etternavn, fødselsåret til pasienten -- 
SELECT 
	pasient_id,
    CONCAT(pasient_id, LENGTH(etternavn), YEAR(fodselsdag)) as passord
FROM pasienter_med_provins;

-- Oppgave 5 -- 
-- Hver innleggelse koster 500 kr for pasienter som ikke har forsikring, og 100 kr for pasienter med forsikring. --
-- Alle pasienter med en pasient_id som er et partall har forsikring. Gi hver pasient enten Ja eller Nei for hvorvidt de har forsikring eller ikke. --
-- Summer innleggelses kostnaden for hver forsikrings gruppe (Ja eller Nei). --
SELECT 
    har_forsikring,
    CONCAT(SUM(IF(har_forsikring = 'Ja', 100, 500)), ' kr') AS total_kostnad
FROM (
    SELECT 
        pasient_id,
        IF(pasient_id % 2 = 0, 'Ja', 'Nei') AS har_forsikring
    FROM 
        pasienter_med_provins
) AS forsikring_status
GROUP BY 
    har_forsikring;

-- Oppgave 6 --
-- Vis fullt provinsnavn for de provinsene som har flere menn(M) enn kvinner(F). -- 
SELECT 
    p.provins_navn
FROM 
    provins p
JOIN 
    pasienter_med_provins pmp ON p.provins_id = pmp.provins_id
GROUP BY 
    p.provins_navn
HAVING 
    SUM(pmp.kjonn = 'M') > SUM(pmp.kjonn = 'F');


-- Oppgave 7 -- 
/*Vi leter etter en bestemt pasient. Hent all informasjon for pasienten som oppfyller følgende kriterier:
fornavn har en r som 3 bokstav
kjønn er kvinne (F)
er født i februar, mai eller desember
veier mellom 60 og 80 kg
pasient id er et oddetall
hun kommer fra Hamilton*/ 
SELECT *
FROM pasienter_med_provins 
WHERE 
    fornavn LIKE '__r%' AND 
    kjonn = 'F' AND
    (MONTH(fodselsdag) IN (2, 5, 12)) AND
    vekt BETWEEN 60 AND 80 AND
    pasient_id % 2 != 0 AND 
    sted = 'Hamilton';


-- Oppgave 8 -- 
-- Vis hvor mange prosent av pasientene som er menn. Avrund svaret til nærmeste hundre og vis det i prosent. -- 
SELECT CONCAT(ROUND(SUM(IF(kjonn = 'M', 1, 0)) / COUNT(*) * 100, 0), "%") AS prosent_menn
FROM pasienter_med_provins;

-- Oppgave 9 --
-- For hver dag, vis totalt antall innleggelser denne dagen. Vis antall endringer fra dagen før. -- 
SELECT 
    innleggelsesdato,
    antall_innleggelser,
    antall_innleggelser - (SELECT COUNT(*) FROM innleggelser WHERE DATE(innleggelsesdato) = DATE_SUB(d.innleggelsesdato, INTERVAL 1 DAY)) AS endringer_fra_forrige_dag
FROM (
    SELECT 
        DATE(innleggelsesdato) AS innleggelsesdato,
        COUNT(*) AS antall_innleggelser
    FROM innleggelser
    GROUP BY DATE(innleggelsesdato)
) AS d
ORDER BY innleggelsesdato;

-- Oppgave 10 -- 
-- Sorter prvins navn i fallende rekkefølge på en slik måte at 'Ontario' alltid er den øverste. -- 
SELECT provins_navn
FROM (
	SELECT provins_navn, 
    IF(provins_navn = "Ontario", 0, 1) as ontario
    FROM provins
) as ontario_tabell
ORDER BY ontario, provins_navn;

-- Oppgave 11 -- 
-- Vi trenger en oversikt som viser hvor mange innleggelser en lege har foretatt hvert år. Vis lege_id, fullt navn på legen, spsialitet, år og totalt_innleggelser for det året. -- 
SELECT 
	l.lege_id, 
	CONCAT(fornavn, " ", etternavn) as fullt_navn, 
	l.spesialitet, 
	YEAR(innleggelsesdato) as år, 
	COUNT(*) as antall_håndteringer
FROM leger l
JOIN innleggelser i on l.lege_id = i.lege_id
GROUP BY YEAR(innleggelsesdato), lege_id;
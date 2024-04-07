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
ORDER BY l.lege_id
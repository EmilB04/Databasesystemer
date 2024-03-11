CREATE VIEW bruker_progresjon AS
SELECT
    ovelsesLogg.BrukerID,
    CONCAT(brukere.fornavn, ' ', brukere.etternavn) AS UtøverNavn,
    ovelsesLogg.OvelseID,
    ovelser.ovelseNavn,
    MIN(ovelsesLogg.dato) AS forsteDato,
    MAX(ovelsesLogg.dato) AS sisteDato,
    MIN(ovelsesLogg.vekt) AS minVekt,
    MAX(ovelsesLogg.vekt) AS maxVekt,
    MIN(ovelsesLogg.repetisjoner) AS minRepetisjoner,
    MAX(ovelsesLogg.repetisjoner) AS maxRepetisjoner
FROM
    ovelsesLogg
JOIN
    brukere ON ovelsesLogg.BrukerID = brukere.BrukerID
JOIN
    ovelser ON ovelsesLogg.OvelseID = ovelser.OvelseID
WHERE
    ovelsesLogg.OvelseID NOT IN (1, 3)
GROUP BY
    ovelsesLogg.BrukerID, ovelsesLogg.OvelseID;

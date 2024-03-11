CREATE VIEW Utover_Okt_Overview AS
SELECT
    o.oktID,
    o.oktType,
    o.dato AS Dato,
    o.brukerID AS BrukerID,
    u.fornavn AS UtøverFornavn,
    u.etternavn AS UtøverEtternavn,
    ou.ovelseNavn AS Øvelse,
    ou.beskrivelse AS ØvelsesBeskrivelse
FROM
    okt o
JOIN
    brukere u ON o.brukerID = u.BrukerID
JOIN
    ovelsesLogg ol ON o.dato = ol.dato
JOIN
    ovelser ou ON ol.OvelseID = ou.OvelseID;
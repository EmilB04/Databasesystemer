-- Skriver ut gjennomsnittsalder -- 
SELECT 
    (SELECT AVG(alder) FROM brukere WHERE brukerType = 'Trener') AS gjennomsnittsalderUtøver,
    (SELECT AVG(alder)  FROM brukere WHERE brukerType = 'Utover') AS gjennomsnittalderTrener;


-- Viser alle øvelser som ikke registrert i loggen --
SELECT OvelseID, ovelseNavn
FROM ovelser
WHERE OvelseID NOT IN (SELECT DISTINCT OvelseID FROM ovelsesLogg);

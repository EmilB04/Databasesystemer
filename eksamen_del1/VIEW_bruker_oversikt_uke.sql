CREATE VIEW bruker_oversikt_uke AS
SELECT
    ukeOversikt.UtoverID AS BrukerID,
    CONCAT(brukere.fornavn, ' ', brukere.etternavn) AS UtøverNavn,
    ukeOversikt.TrenerID AS TrenerID,
    CONCAT(trener.fornavn, ' ', trener.etternavn) AS TrenerNavn,
    ukePlan_UkeDager.ukedager AS Ukedag,
    ukeOversikt.PlanID AS PlanID,
    programmer.program_navn AS ProgramNavn,
    okt.oktID,
    okt.oktType
FROM
    ukeOversikt
JOIN
    brukere ON ukeOversikt.UtoverID = brukere.BrukerID
JOIN
    brukere AS trener ON ukeOversikt.TrenerID = trener.BrukerID
JOIN
    ukePlan ON ukeOversikt.PlanID = ukePlan.PlanID
JOIN
    ukePlan_UkeDager ON ukePlan.PlanID = ukePlan_UkeDager.PlanID
JOIN
    programmer ON ukePlan.program_id = programmer.program_id
JOIN
    okt ON ukePlan_UkeDager.ukedager = okt.dato;

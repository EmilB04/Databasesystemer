CREATE VIEW salg_pr_strikkefasthet AS
SELECT strikkefasthet, COUNT(*) as antall_varer 
FROM salg s, garn g
WHERE s.produsent = g.produsent
AND garn = g.navn
GROUP BY strikkefasthet;

SELECT * FROM salg_pr_strikkefasthet;

-- Ikke oppdaterbar (feilkode) -- 
UPDATE salg_pr_strikkefasthet
set antall_varer = 2
WHERE strikkefasthet = "22m";
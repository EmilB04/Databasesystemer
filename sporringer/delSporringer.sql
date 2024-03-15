-- Viser siste ordredato for hver kunde --
SELECT id, navn,
	(SELECT MAX(dato)
    FROM ordre AS o
    WHERE o.kunde_id = k.id) AS dato
FROM kunde AS k;

-- Alle antall av unike fiberinnhold -- 
SELECT COUNT(DISTINCT fiber) AS AntallFiberinnhold
FROM garn;


-- Fra nye tabeller -- 
SELECT m.Fornavn, m.Etternavn, ROUND(AVG(r.Tid), 2) AS GjennomsnittsTid
FROM medlem m, resultat r
WHERE m.MedlemsNr = r.MedlemsNr
GROUP BY m.MedlemsNr;

SELECT m.Fornavn, m.Etternavn, MAX(l.Dato) AS SisteLøpedato
FROM medlem m
JOIN resultat r ON m.MedlemsNr = r.MedlemsNr
JOIN løp l ON r.LøpsNr = l.LøpsNr
GROUP BY m.MedlemsNr;

SELECT m.Fornavn, m.Etternavn, l.Distanse, r.Tid
FROM medlem m
JOIN resultat r ON m.MedlemsNr = r.MedlemsNr
JOIN løp l ON r.LøpsNr = l.LøpsNr
WHERE r.Tid > (
    SELECT AVG(r2.Tid)
    FROM resultat r2
    WHERE r2.MedlemsNr = m.MedlemsNr
)
GROUP BY m.MedlemsNr, m.Fornavn, m.Etternavn, l.Distanse, r.Tid;

-- Finn medlemene av løpeklubben som har deltatt på alle 400 m konkurransene --
-- EXISTS --
SELECT * FROM medlem m
WHERE NOT EXISTS(
	SELECT * FROM løp l
	WHERE l.Distanse = 400
	AND NOT EXISTS(
		SELECT * FROM resultat r
		WHERE r.LøpsNr = l.Løpsnr
		AND r.MedlemsNr = m.MedlemsNr
	)
);
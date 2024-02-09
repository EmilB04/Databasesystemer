SELECT kunde.id, ordre.garn_produsent, ordre.garn_navn, ordre.dato
FROM kunde LEFT OUTER JOIN ordre
ON ordre.kunde_id = kunde.id;
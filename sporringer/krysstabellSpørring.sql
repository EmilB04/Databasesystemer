SELECT
	(SELECT sum(antall) 
	FROM ordre
	WHERE garn_produsent = "Sandnes Garn") as solgte_sandnes,
	(SELECT sum(antall) 
	FROM ordre
	WHERE garn_produsent = "Drops") as solgte_drops
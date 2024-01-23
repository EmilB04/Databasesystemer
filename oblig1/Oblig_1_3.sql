/*SELECT * FROM oblig.oblig_1_2;*/

/* Oblig 1_3 starter her */

/*SELECT fornavn, etternavn, kjonn FROM oblig.oblig_1_2 WHERE kjonn = 'M';*/
/*SELECT fornavn, etternavn FROM oblig.oblig_1_2 WHERE allergier IS NULL*/
/*SELECT fornavn FROM oblig.oblig_1_2 WHERE fornavn LIKE "C%";*/
/*SELECT fornavn, etternavn FROM oblig.oblig_1_2 WHERE vekt >= 100 AND vekt <=120;*/
/*UPDATE oblig.oblig_1_2 SET allergier = "NKA" WHERE allergier is NULL;*/
/*SELECT allergier FROM oblig.oblig_1_2;*/
SELECT CONCAT(fornavn, ' ', etternavn) AS Fullt_navn FROM oblig_1_2;
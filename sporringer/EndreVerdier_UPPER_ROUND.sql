/*Endring av kolonneverdier og kolonnenavn*/
SELECT produsent, navn, pris*1.1 AS justert_pris FROM garn;

/*Avrunding til nærmeste tiertall*/
/*UPPER = Gjør tekst til uppercase*/
SELECT UPPER (navn), produsent, pris, ROUND(pris, -1) FROM garn;
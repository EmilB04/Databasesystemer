/*Totalpris for alle garn*/
SELECT sum(pris) FROM garn;
/*Gjennomsnittpris for produsenten "Drops"*/
SELECT avg(pris) FROM garn WHERE produsent = "Drops";
/*Grupperer gjennomsnittspris for alle produsenter*/
SELECT produsent, avg(pris) FROM garn GROUP BY produsent;
/*Teller antall */
SELECT COUNT(pinnestorrelse) from garn;
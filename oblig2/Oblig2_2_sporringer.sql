/*Hent ut antallet på hvor mange pasienter som er først i 2010*/
/*SELECT COUNT(fodselsdag) as Antall_pasienter_født_i_2010 FROM pasienter_med_provins WHERE fodselsdag LIKE '%2010%';*/
/*Vis fornavn, etternavn og høyden til den høyeste pasienten*/
/*SELECT fornavn, etternavn, hoyde FROM pasienter_med_provins WHERE hoyde = (SELECT MAX(hoyde) FROM pasienter_med_provins);*/
/*Vis all informasjon tilknyttet pasienter med følgende id: 1,45,234,379,500*/
SELECT * FROM pasienter_med_provins WHERE pasient_id = '1' or pasient_id = '45' or pasient_id = '234' or pasient_id = '379' or pasient_id = '500';
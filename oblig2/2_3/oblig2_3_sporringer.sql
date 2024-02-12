-- Antall Innleggelser -- 
SELECT COUNT(innleggelsesdato) AS Antall_Innleggelser FROM innleggelser; 

-- Alle innleggelser hvor en pasient ble innlagt og utskrevet på samme dag -- 
SELECT * FROM innleggelser WHERE innleggelsesdato = utskrivingsdato;

-- Pasient id og antall innleggelser til pasient 179 --
SELECT pasient_id, COUNT(innleggelsesdato) as Antall_innleggelser FROM innleggelser WHERE pasient_id = 179;
INSERT INTO program
VALUES (
	   1, 
	   'Mandag', 
	   (SELECT OvelseID as "Oppvarming" FROM ovelser WHERE OvelseID = 'Jogging'),
	   (SELECT OvelseID as "Øvelse 1" FROM ovelser WHERE OvelseID = 'Benkpress'),
	   (SELECT OvelseID as "Øvelse 2" FROM ovelser WHERE OvelseID = 'Roing-med-stang-eller-manualer'),
	   (SELECT OvelseID as "Øvelse 3" FROM ovelser WHERE OvelseID = 'Skulderpress'),
	   (SELECT OvelseID as "Øvelse 4" FROM ovelser WHERE OvelseID = 'Bicepscurls'),
	   (SELECT OvelseID as "Øvelse 5" FROM ovelser WHERE OvelseID = 'Triceps-dips'),
	   (SELECT OvelseID as "Avslutning" FROM ovelser WHERE OvelseID = 'Nedkjøling')
);

INSERT INTO program
VALUES (
	   2, 
	   'Tirsdag', 
	   (SELECT OvelseID FROM ovelser WHERE OvelseID = 'Jogging'),
	   (SELECT OvelseID FROM ovelser WHERE OvelseID = 'Løping'),
	   NULL,
	   NULL,
	   NULL,
	   NULL,
	   (SELECT OvelseID FROM ovelser WHERE OvelseID = 'Nedkjøling')
);

INSERT INTO program
VALUES (
	   3, 
	   'Onsdag', 
	   (SELECT OvelseID FROM ovelser WHERE OvelseID = 'Lett-aktivitet'),
	   NULL,
       NULL,
	   NULL,
	   NULL,
	   NULL,
	   NULL
);

INSERT INTO program
VALUES (
	   4, 
	   'Torsdag', 
	   (SELECT OvelseID FROM ovelser WHERE OvelseID = 'Jogging'),
	   (SELECT OvelseID FROM ovelser WHERE OvelseID = 'Knebøy'),
	   (SELECT OvelseID FROM ovelser WHERE OvelseID = 'Utfall'),
	   (SELECT OvelseID FROM ovelser WHERE OvelseID = 'Rumensk-markløft'),
	   (SELECT OvelseID FROM ovelser WHERE OvelseID = 'Leg-curls'),
	   (SELECT OvelseID FROM ovelser WHERE OvelseID = 'Leg-press'),
	   (SELECT OvelseID FROM ovelser WHERE OvelseID = 'Nedkjøling')
);

INSERT INTO program
VALUES (
	   5, 
	   'Fredag', 
	   NULL,
	   (SELECT OvelseID as "Velgbar" FROM ovelser WHERE OvelseID = 'Sykling/Svømming'),
	   NULL,
	   NULL,
	   NULL,
	   NULL,
	   NULL
);

INSERT INTO program
VALUES (
	   6, 
	   'Lørdag', 
	   NULL,
	   (SELECT OvelseID as "Velgbar" FROM ovelser WHERE OvelseID = 'Valgfri-aktivitet'),
	   NULL,
	   NULL,
	   NULL,
	   NULL,
	   NULL
);

INSERT INTO program
VALUES (
	   7, 
	   'Søndag', 
	   NULL,
	   (SELECT OvelseID as "Velgbar" FROM ovelser WHERE OvelseID = 'Full-hvile/lett-aktivitet'),
       NULL,
	   NULL,
	   NULL,
	   NULL,
	   NULL
);

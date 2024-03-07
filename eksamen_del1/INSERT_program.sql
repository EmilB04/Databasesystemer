INSERT INTO programmer
VALUES (
	   1, 
	   'Mandag', 
	   (SELECT OvelseID as "Jogging" FROM ovelser WHERE OvelseID = '1'),
	   (SELECT OvelseID as "Benkpress" FROM ovelser WHERE OvelseID = '9'),
	   (SELECT OvelseID as "Roing med stang eller manualer" FROM ovelser WHERE OvelseID = '10'),
	   (SELECT OvelseID as "Skulderpress" FROM ovelser WHERE OvelseID = '11'),
	   (SELECT OvelseID as "Bicepscurl" FROM ovelser WHERE OvelseID = '12'),
	   (SELECT OvelseID as "Triceps dips eller triceps pushdowns" FROM ovelser WHERE OvelseID = '13'),
	   (SELECT OvelseID as "Nedkjøling" FROM ovelser WHERE OvelseID = '3')
);

INSERT INTO programmer
VALUES (
	   2, 
	   'Tirsdag', 
	   (SELECT OvelseID FROM ovelser WHERE OvelseID = '1'),
	   (SELECT OvelseID FROM ovelser WHERE OvelseID = '4'),
	   NULL,
	   NULL,
	   NULL,
	   NULL,
	   (SELECT OvelseID FROM ovelser WHERE OvelseID = '3')
);

INSERT INTO programmer
VALUES (
	   3, 
	   'Onsdag', 
	   (SELECT OvelseID FROM ovelser WHERE OvelseID = '21'),
	   NULL,
       NULL,
	   NULL,
	   NULL,
	   NULL,
	   NULL
);

INSERT INTO programmer
VALUES (
	   4, 
	   'Torsdag', 
	   (SELECT OvelseID FROM ovelser WHERE OvelseID = '1'),
	   (SELECT OvelseID FROM ovelser WHERE OvelseID = '14'),
	   (SELECT OvelseID FROM ovelser WHERE OvelseID = '15'),
	   (SELECT OvelseID FROM ovelser WHERE OvelseID = '16'),
	   (SELECT OvelseID FROM ovelser WHERE OvelseID = '17'),
	   (SELECT OvelseID FROM ovelser WHERE OvelseID = '18'),
	   (SELECT OvelseID FROM ovelser WHERE OvelseID = '3')
);

INSERT INTO programmer
VALUES (
	   5, 
	   'Fredag', 
	   NULL,
	   (SELECT OvelseID FROM ovelser WHERE OvelseID = '22'),
	   NULL,
	   NULL,
	   NULL,
	   NULL,
	   NULL
);

INSERT INTO programmer
VALUES (
	   6, 
	   'Lørdag', 
	   NULL,
	   (SELECT OvelseID FROM ovelser WHERE OvelseID = '19'),
	   NULL,
	   NULL,
	   NULL,
	   NULL,
	   NULL
);

INSERT INTO programmer
VALUES (
	   7, 
	   'Søndag', 
	   NULL,
	   (SELECT OvelseID FROM ovelser WHERE OvelseID = '20'),
       NULL,
	   NULL,
	   NULL,
	   NULL,
	   NULL
);



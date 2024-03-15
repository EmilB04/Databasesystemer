CREATE TABLE Løp
(
LøpsNr INTEGER,
Dato DATE,
Distanse SMALLINT,
CONSTRAINT LøpPK PRIMARY KEY (LøpsNr)
);
CREATE TABLE Medlem
(
MedlemsNr INTEGER,
Fornavn VARCHAR(15),
Etternavn VARCHAR(15),
Kjønn CHAR(1),
Fødselsår SMALLINT,
CONSTRAINT MedlemPK PRIMARY KEY (MedlemsNr)
);
CREATE TABLE Resultat
(
LøpsNr INTEGER,
MedlemsNr INTEGER,
Tid FLOAT,
CONSTRAINT ResultatPK PRIMARY KEY (LøpsNr, MedlemsNr),
CONSTRAINT ResultatLøpFK FOREIGN KEY (LøpsNr)
REFERENCES Løp (LøpsNr),
CONSTRAINT ResultatMedlemFK FOREIGN KEY (MedlemsNr)
REFERENCES Medlem (MedlemsNr)
);
-- Setter inn eksempeldata
INSERT INTO Løp(LøpsNr, Dato, Distanse) VALUES
( 1, '2019-05-12', 400),
( 2, '2019-05-12', 800),
( 3, '2019-05-12', 5000),
( 4, '2019-06-07', 1500),
( 5, '2019-06-24', 400),
( 6, '2019-06-24', 1500),
( 7, '2019-06-24', 5000),
( 8, '2019-07-20', 400),
( 9, '2019-07-20', 800),
(10, '2019-07-30', 5000),
(11, '2019-08-15', 3000);
INSERT INTO Medlem(MedlemsNr, Fornavn, Etternavn, Kjønn, Fødselsår) VALUES
(1, 'Lise', 'Jensen', 'K', 2006),
(2, 'Joakim', 'Gjertsen', 'M', 1997),
(3, 'Katrine', 'Garvik', 'K', 2000),
(4, 'Emilie', 'Marcussen', 'K', 1991),
(5, 'Valter', 'Eilertsen', 'M', 2005),
(6, 'Tormod', 'Vaksdal', 'M', 1988),
(7, 'Asle', 'Eckhoff', 'M', 2003),
(8, 'Birthe', 'Aass', 'K', 2000);
-- Alle tider i sekunder.
INSERT INTO Resultat(MedlemsNr, LøpsNr, Tid) VALUES
(1, 1, 83.50),
(1, 5, 81.75),
(2, 2, 134.38),
(2, 6, 337.22),
(2, 9, 165.90),
(3, 11, 645.73),
(4, 3, 10982.42),
(4, 10, 10975.76),
(5, 2, 78.44),
(5, 9, 159.93),
(6, 1, 61.46),
(6, 5, 62.50),
(6, 8, 60.71),
(7, 4, 339.40),
(7, 6, 337.88),
(8, 10, 1102.21);
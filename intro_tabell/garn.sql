CREATE TABLE garn (
	produsent VARCHAR(20) NOT NULL,
    navn VARCHAR(25) NOT NULL,
    pris INT,
    vekt INT,
    lopemeter INT,
    fiber VARCHAR(45),
    pinnestorrelse FLOAT,
    strikkefasthet VARCHAR(15),
    farger INT,
    CONSTRAINT pk_garn PRIMARY KEY (produsent, navn)
);

Select * from garn;
CREATE TABLE post(
	nr INT NOT NULL PRIMARY KEY,
    sted VARCHAR(45)
);

CREATE TABLE kunde (
    id INT NOT NULL PRIMARY KEY,
    navn VARCHAR(255),
    adresse VARCHAR(255),
    telefonnummer VARCHAR(20),
    epost VARCHAR(255),
    post_nr INT,
    CONSTRAINT fk_kunde_post FOREIGN KEY (post_nr) REFERENCES post(nr)
);

CREATE TABLE ordre (
	kunde_id INT NOT NULL,
    garn_produsent VARCHAR(20) NOT NULL,
    garn_navn VARCHAR(25) NOT NULL,
    antall INT,
    dato DATETIME,
    CONSTRAINT pk_ordre PRIMARY KEY (kunde_id, garn_produsent, garn_navn, dato),
    CONSTRAINT fk_ordre_kunde FOREIGN KEY (kunde_id) REFERENCES kunde (id),
    CONSTRAINT fk_ordre_garn FOREIGN KEY (garn_produsent, garn_navn) REFERENCES garn (produsent, navn)
);
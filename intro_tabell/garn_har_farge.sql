CREATE TABLE garn_har_farge (
	garn_produsent 	VARCHAR(20) NOT NULL,
    garn_navn 		VARCHAR(25) NOT NULL,
    farge_id		INT NOT NULL,
    
	CONSTRAINT pk_ghf PRIMARY KEY (garn_produsent, garn_navn, farge_id),
	CONSTRAINT fk_garn_ghf1 FOREIGN KEY (garn_produsent, garn_navn) REFERENCES garn(produsent, navn),
	CONSTRAINT fk_farge_ghf FOREIGN KEY (farge_id) REFERENCES farge(id)
);
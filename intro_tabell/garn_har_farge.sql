/*CREATE TABLE garn_har_farge (
	garn_produsent 	VARCHAR(20),
    garn_navn 		VARCHAR(25),
    farge_id		INT,
    CONSTRAINT pk_ghf PRIMARY KEY (garn_produsent, garn_navn, farge_id),
    CONSTRAINT fk_garn_ghf1 FOREIGN KEY (garn_produsent, garn_navn) REFERENCES garn(produsent, navn),
    CONSTRAINT fk_farge_ghf2 FOREIGN KEY (farge_id) REFERENCES farge(farge_id)
);*/
SELECT * FROM forelesning.garn_har_farge;
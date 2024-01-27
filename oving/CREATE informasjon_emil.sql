CREATE TABLE informasjon_Emil (
	fodselsNummer VARCHAR(11) NOT NULL,
    navn VARCHAR(40) NOT NULL,
    brukerBriller BOOLEAN,
    adresse VARCHAR(75),
    alder INT(5),
    CONSTRAINT pk_info_emil PRIMARY KEY (fodselsNummer)
);
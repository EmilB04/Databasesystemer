CREATE TABLE informasjon_Emil (
	fodselsnummer VARCHAR(11) NOT NULL,
    navn VARCHAR(40) NOT NULL,
    brukerbriller BOOLEAN,
    gatenavn VARCHAR(25),
    husnummer VARCHAR(8),
    postnummer VARCHAR(4),
    sted VARCHAR(20),
    alder INT(3),
    CONSTRAINT pk_info_emil PRIMARY KEY (fodselsnummer)
);
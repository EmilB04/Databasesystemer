CREATE TABLE progresjon (
	ProgresjonsID INT NOT NULL,
    BrukerID INT NOT NULL,
    OktID INT NOT NULL,
    kommentar VARCHAR(150),
    
    CONSTRAINT pk_progresjon PRIMARY KEY (ProgresjonsID),
    CONSTRAINT fk_brukerid FOREIGN KEY (BrukerID) REFERENCES brukere(BrukerID),
    CONSTRAINT fk_okt FOREIGN KEY (OktID) REFERENCES okter(OktID)
);
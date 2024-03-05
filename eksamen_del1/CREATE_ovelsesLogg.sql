CREATE TABLE ovelsesLogg (
	LogID INT NOT NULL,
    BrukerID INT NOT NULL,
    OvelseID INT NOT NULL,
    dato DATE NOT NULL,
    sett INT,
    repetisjoner INT,
    vekt INT,
    puls_sone VARCHAR(15),
    distanse VARCHAR(15),
    
    CONSTRAINT pk_oLogg PRIMARY KEY (LogID, dato),
    CONSTRAINT fk_bruker FOREIGN KEY (BrukerID) REFERENCES brukere(BrukerID),
    CONSTRAINT fk_ovelse FOREIGN KEY (OvelseID) REFERENCES ovelser(OvelseID)
);
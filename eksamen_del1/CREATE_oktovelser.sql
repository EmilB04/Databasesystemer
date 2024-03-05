CREATE table oktOvelser (
	OktOvelseID INT NOT NULL,
	OktID INT NOT NULL,
    OvelseID INT NOT NULL,
    antallSett INT, 
    AntallRep FLOAT, 
    vekt FLOAT,
	distanse VARCHAR(15),
    pulsSoner VARCHAR(5),
	
    
    CONSTRAINT pk_oktOvelseID PRIMARY KEY (OktOvelseID),
    CONSTRAINT fk_okter FOREIGN KEY (OktID) REFERENCES okter(OktID),
    CONSTRAINT fk_ovelser FOREIGN KEY (OvelseID) REFERENCES ovelser(OvelseID)
);
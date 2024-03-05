CREATE table ukeOversikt (
	UtoverID int NOT NULL, 
    UkePlan INT NOT NULL,
    aar INT,
    uke INT,
    TrenerID int NOT NULL,
    
    CONSTRAINT pk_uke PRIMARY KEY (UtoverID, aar, uke),
    CONSTRAINT fk_brukere FOREIGN KEY (UtoverID) REFERENCES brukere(BrukerID),
    CONSTRAINT fk_brukere1 FOREIGN KEY (TrenerID) REFERENCES brukere(BrukerID),
    CONSTRAINT fk_uke FOREIGN KEY (UkePlan) REFERENCES ukePlan(PlanID)
);
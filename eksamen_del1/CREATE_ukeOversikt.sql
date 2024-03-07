CREATE table ukeOversikt (
	UkeOversiktID INT NOT NULL,
	UtoverID int NOT NULL, 
    UkePlan INT NOT NULL,
    TrenerID int NOT NULL,
    startDato date,
    sluttDato date,
    
    CONSTRAINT pk_uke PRIMARY KEY (UkeOversiktID),
    CONSTRAINT fk_brukere FOREIGN KEY (UtoverID) REFERENCES brukere(BrukerID),
    CONSTRAINT fk_brukere1 FOREIGN KEY (TrenerID) REFERENCES brukere(BrukerID),
    CONSTRAINT fk_uke FOREIGN KEY (UkePlan) REFERENCES ukePlan(PlanID)
);
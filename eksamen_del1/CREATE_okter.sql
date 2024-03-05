CREATE table ukeOversikt ( 
	OktID INT NOT NULL,
    UkePlan INT NOT NULL,
    BrukerID int,
    
    CONSTRAINT pk_okter PRIMARY KEY (OktID),
    CONSTRAINT fk_brukere FOREIGN KEY (BrukerID) REFERENCES brukere(BrukerID),
    CONSTRAINT fk_uke FOREIGN KEY (UkePlan) REFERENCES ukePlan(PlanID)
    
);
CREATE table okter ( 
	OktID INT NOT NULL,
    ProgramID INT NOT NULL,
    oktType VARCHAR(25),
    dato DATE,
    notater VARCHAR(200),
    BrukerID int,
    
    CONSTRAINT pk_okter PRIMARY KEY (OktID),
    CONSTRAINT fk_brukere FOREIGN KEY (BrukerID) REFERENCES brukere(BrukerID),
    CONSTRAINT fk_program FOREIGN KEY (ProgramID) REFERENCES program(program_id)
    
);
CREATE TABLE brukere (
	BrukerID int NOT NULL,
    fornavn VARCHAR(25),
    etternavn VARCHAR(25),
    brukerType VARCHAR(15) NOT NULL,
    
    CONSTRAINT pk_brukere PRIMARY KEY (BrukerID)
);
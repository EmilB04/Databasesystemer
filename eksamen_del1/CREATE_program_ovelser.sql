CREATE TABLE program_ovelser (
	program_id INT NOT NULL,
    OvelseID INT NOT NULL,
    
    CONSTRAINT fk_programmer FOREIGN KEY (program_id) REFERENCES programmer(program_id),
    CONSTRAINT fk_ovelser FOREIGN KEY (OvelseID) REFERENCES ovelser(OvelseID)
);
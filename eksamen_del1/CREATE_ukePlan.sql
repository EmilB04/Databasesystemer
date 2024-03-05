CREATE TABLE ukePlan (
    PlanID INT NOT NULL,
    mandag INT,
    tirsdag INT, 
    onsdag INT, 
    torsdag INT,
    fredag INT,
    lordag INT,
    sondag INT,
    
    CONSTRAINT pk_uPlan PRIMARY KEY (PlanID),
    CONSTRAINT fk_mandag FOREIGN KEY (mandag) REFERENCES programmer(program_id),
    CONSTRAINT fk_tirsdag FOREIGN KEY (tirsdag) REFERENCES programmer(program_id),
    CONSTRAINT fk_onsdag FOREIGN KEY (onsdag) REFERENCES programmer(program_id),
    CONSTRAINT fk_torsdag FOREIGN KEY (torsdag) REFERENCES programmer(program_id),
    CONSTRAINT fk_fredag FOREIGN KEY (fredag) REFERENCES programmer(program_id),
    CONSTRAINT fk_lordag FOREIGN KEY (lordag) REFERENCES programmer(program_id),
    CONSTRAINT fk_sondag FOREIGN KEY (sondag) REFERENCES programmer(program_id)
);

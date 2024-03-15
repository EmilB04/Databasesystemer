CREATE TABLE ukePlan (
    PlanID INT NOT NULL,
    program_id INT NOT NULL,
    
    CONSTRAINT pk_uPlan PRIMARY KEY (PlanID),
    CONSTRAINT fk_program FOREIGN KEY (program_id) REFERENCES programmer(program_id)
);

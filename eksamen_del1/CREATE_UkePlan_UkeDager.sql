CREATE TABLE ukePlan_UkeDager (
	PlanID INT NOT NULL,
    ukedager DATE,
    
    CONSTRAINT pk_ukePlan FOREIGN KEY (PlanID) REFERENCES ukePlan(PlanID)
);
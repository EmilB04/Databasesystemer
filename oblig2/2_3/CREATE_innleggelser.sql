CREATE TABLE innleggelser (
	pasient_id INT NOT NULL,
    innleggelsesdato DATE,
    utskrivingsdato DATE,
    diagnose VARCHAR(25),
    lege_id INT NOT NULL,
    
    CONSTRAINT pk_innleggelser PRIMARY KEY (pasient_id, lege_id, innleggelsesdato),
    CONSTRAINT fk_oblig1_2 FOREIGN KEY (pasient_id) REFERENCES pasienter_med_provins(pasient_id),
    CONSTRAINT fk_leger FOREIGN KEY (lege_id) REFERENCES leger(lege_id)
);
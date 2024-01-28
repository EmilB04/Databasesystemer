/*Oblig1.3*/
CREATE TABLE pasienter_med_provins (
    pasient_id INT NOT NULL,
    fornavn VARCHAR(25) NOT NULL,
    etternavn VARCHAR(25) NOT NULL,
    kjonn CHAR(1) NOT NULL,
    fodselsdag DATE NOT NULL,
    sted VARCHAR(20) NOT NULL,
    provins_id CHAR(2) NOT NULL,
    allergier VARCHAR(20),
    hoyde INT,
    vekt INT,
    
    CONSTRAINT pk_pmp PRIMARY KEY (pasient_id, provins_id),
    CONSTRAINT fk_provins FOREIGN KEY (provins_id) REFERENCES provins(provins_id),
    CONSTRAINT fk_pasienter FOREIGN KEY (pasient_id) REFERENCES oblig_1_2(pasient_id)
);


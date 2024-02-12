CREATE TABLE leger (
	lege_id INT NOT NULL,
    fornavn VARCHAR(25) NOT NULL,
    etternavn VARCHAR(25) NOT NULL,
    spesialitet VARCHAR(45) NOT NULL,
    
    CONSTRAINT pk_leger PRIMARY KEY (lege_id)
);
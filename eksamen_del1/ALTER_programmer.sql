ALTER TABLE programmer
ADD CONSTRAINT fk_oppvarming FOREIGN KEY (oppvarming) REFERENCES ovelser(OvelseID),
ADD CONSTRAINT fk_ovelse1 FOREIGN KEY (ovelse1) REFERENCES ovelser(OvelseID),
ADD CONSTRAINT fk_ovelse2 FOREIGN KEY (ovelse2) REFERENCES ovelser(OvelseID),
ADD CONSTRAINT fk_ovelse3 FOREIGN KEY (ovelse3) REFERENCES ovelser(OvelseID),
ADD CONSTRAINT fk_ovelse4 FOREIGN KEY (ovelse4) REFERENCES ovelser(OvelseID),
ADD CONSTRAINT fk_ovelse5 FOREIGN KEY (ovelse5) REFERENCES ovelser(OvelseID),
ADD CONSTRAINT fk_avslutting FOREIGN KEY (avslutting) REFERENCES ovelser(OvelseID);

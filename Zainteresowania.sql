CREATE DATABASE Moje_zainteresowania;

SET SQL_SAFE_UPDATES=0;

CREATE TABLE Zainteresowania (
id INTEGER,
Nazwa TEXT,
Opis TEXT,
Data_realizacji DATE
);

INSERT INTO Zainteresowania (Nazwa, Opis) 
VALUES 
("Modelarstwo", "Sklejanie modeli"),
("Filatelistyka", "Zbieranie znaczków"),
("Jogging", "Biegi przełajowe"),
("Snowboard", "Jazda na desce"),
("F1", "Oglądanie wyścigów F1");

INSERT INTO Zainteresowania 
VALUES (6, "Ogrodnictwo", "Sadzenie roślinek", "2025-12-12");

INSERT INTO Zainteresowania (id, Data_realizacji)
VALUES (4, "2026-01-31");

DELETE FROM Zainteresowania
WHERE id = 4;

UPDATE Zainteresowania 
SET id = 4
WHERE Nazwa = "Snowboard";

UPDATE Zainteresowania 
SET Data_realizacji = "2025-11-30"
WHERE Nazwa = "Snowboard";

DELETE FROM Zainteresowania
WHERE id IS NULL;

SELECT * FROM Zainteresowania;

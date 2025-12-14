CREATE DATABASE Lista_prezentow;

CREATE TABLE Prezenty_2020 (
id INTEGER PRIMARY KEY,
imię_obdarowanego TEXT NOT NULL,
Pomysł_na_prezent TEXT NOT NULL,
Cena INTEGER DEFAULT 0,
Miejsce_zakupu TEXT
);

INSERT INTO Prezenty_2020 VALUES (1, "Janek", "Laptop", 3000, "X-kom");
INSERT INTO Prezenty_2020 VALUES (2, "Hania", "Hobby Horse", 600, "Horsemania");
INSERT INTO Prezenty_2020 VALUES (3, "Franek", "Lightsaber", 250, "Smyk");
INSERT INTO Prezenty_2020 VALUES (4, "Gabrysia", "Barbie", 200, "Amazon");
INSERT INTO Prezenty_2020 VALUES (5, "Zuzia", "Lego", 700, "Lego Store");

SELECT * FROM Prezenty_2020;

UPDATE Prezenty_2020
SET Pomysł_na_prezent = "Rower"
WHERE id = 3;

SELECT * FROM Prezenty_2020
WHERE id = 3;

DELETE FROM Prezenty_2020
WHERE id = 1;

SELECT * FROM Prezenty_2020;

ALTER TABLE Prezenty_2020
DROP COLUMN Miejsce_zakupu;

SELECT imię_obdarowanego FROM Prezenty_2020
WHERE id LIMIT 3 OFFSET 1;

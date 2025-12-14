CREATE DATABASE Zadania;

CREATE TABLE Biblioteczka (
ID integer,
Tytul text,
Data_zakupu date
);

INSERT INTO Biblioteczka (id, Tytul, Data_zakupu)
VALUES (1, "Szogun", "2023-11-26");

INSERT INTO Biblioteczka (id, Tytul, Data_zakupu)
VALUES (2, "Narrenturm", "2010-05-10");

INSERT INTO Biblioteczka (id, Tytul, Data_zakupu)
VALUES (3, "Król", "2017-01-31");

SELECT * FROM Biblioteczka;

UPDATE Biblioteczka
SET Tytul = "Quo Vadis"
WHERE id = 1;

SET SQL_SAFE_UPDATES = 0;

ALTER TABLE Biblioteczka
ADD COLUMN Autor TEXT;

UPDATE Biblioteczka
SET Autor = "Sienkiewicz"
WHERE id = 1;

UPDATE Biblioteczka
SET Autor = "Sapkowski"
WHERE id = 2;

UPDATE Biblioteczka
SET Autor = "Twardoch"
WHERE id = 3;

DELETE FROM Biblioteczka
WHERE id = 2;

DELETE FROM Biblioteczka
WHERE id = 3;

SELECT Autor FROM Biblioteczka;


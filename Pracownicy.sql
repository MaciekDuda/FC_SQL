CREATE DATABASE Lista_pracowników;

CREATE TABLE Pracownicy (
id INTEGER PRIMARY KEY,
Imię TEXT NOT NULL,
Nazwisko TEXT NOT NULL,
Stanowisko TEXT,
Dział TEXT
);

INSERT INTO Pracownicy VALUES (1, "Jan", "Kowalski", "Mechanik", "Warszat");
INSERT INTO Pracownicy VALUES (2, "Anna", "Nowak", "Doradca", "Sprzedaż");
INSERT INTO Pracownicy VALUES (3, "Mikołaj", "Święty", "Starszy Doradca", "Sprzedaż");
INSERT INTO Pracownicy VALUES (4, "Paweł", "Malinowski", "Specjalista", "IT");
INSERT INTO Pracownicy VALUES (5, "Beata", "Kruszyna", "Logistyk", "Spedycja");

SELECT * FROM Pracownicy;

ALTER TABLE Pracownicy
ADD COLUMN Data_zatrudnienia DATE;

INSERT INTO Pracownicy VALUES (6, "Anna", "Batory", "Doradca", "Sprzedaż", "2025-12-01");

SELECT * FROM Pracownicy;

UPDATE Pracownicy
SET Data_zatrudnienia = "2020-01-01"
WHERE Data_zatrudnienia = null;

UPDATE Pracownicy
SET Data_zatrudnienia = "2020-01-01"
WHERE id = 1;

UPDATE Pracownicy
SET Data_zatrudnienia = "2020-01-01"
WHERE id = 2;

UPDATE Pracownicy
SET Data_zatrudnienia = "2020-01-01"
WHERE id = 3;

UPDATE Pracownicy
SET Data_zatrudnienia = "2020-01-01"
WHERE id = 4;

UPDATE Pracownicy
SET Data_zatrudnienia = "2020-01-01"
WHERE id = 5;

SELECT * FROM Pracownicy;

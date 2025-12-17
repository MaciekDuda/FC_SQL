USE Pracownicy;

CREATE TABLE Pracownicy4 (
ID INTEGER PRIMARY KEY AUTO_INCREMENT,
Imię VARCHAR(30),
Nazwisko VARCHAR(50),
Wiek INTEGER,
Kurs TEXT);

INSERT INTO Pracownicy4 (ID, Imię, Nazwisko, Wiek, Kurs)
VALUES 
(1, 'Anna', 'NOWAK', 34, 'DS'),
(2, 'Roman', 'KOWALSKI', 42, 'DS'),
(3, 'Tomasz', 'WIŚNIEWSKI', 33, 'DS'),
(4, 'Agata', 'WÓJCIK', 43, 'DS'),
(5, 'Elżbieta', 'KOWALCZYK', 28, 'Java'),
(6, 'Przemysław', 'KOWALCZYK', 34, 'Java'),
(7, 'Robert', 'KOWALCZYK', 35, 'Java'),
(8, 'Radosław', 'ZIELIŃSKI', 38, 'Java'),
(9, NULL, 'WOŹNIAK', 26, 'Java'),
(10, 'Robert', 'SZYMAŃSKI', 34, 'Java'),
(11, 'Radosław', 'DĄBROWSKI', 35, NULL),
(12, 'Robert', 'KOZŁOWSKI', NULL, 'UX'),
(13, 'Joanna', 'MAZUR', 26, 'UX'),
(14, 'Radosław', 'JANKOWSKI', 27, 'UX'),
(15, 'Patryk', 'LEWANDOWSKI', 28, 'Tester'),
(16, NULL, 'ZIELIŃSKI', 28, 'Tester'),
(17, 'Andrzej', 'WOŹNIAK', 31, 'Tester'),
(18, 'Andrzej', 'LEWANDOWSKI', 30, 'Tester'),
(19, 'Roman', 'KOWALCZYK', 39, 'Tester'),
(20, 'Ewa', 'WOŹNIAK', 31, 'Tester');

SELECT * FROM Pracownicy4;

SELECT * FROM Pracownicy4
WHERE Imię = 'Anna';

SELECT * FROM Pracownicy4
WHERE Imię IS NULL;

SELECT Kurs FROM Pracownicy4
WHERE wiek >= 30 AND wiek <= 40 AND Kurs IS NOT NULL;

SELECT Wiek FROM Pracownicy4
WHERE ID >= 1 AND ID <= 7;

SELECT * FROM Pracownicy4
WHERE Wiek IS NULL;

ALTER TABLE Pracownicy4
RENAME COLUMN Kurs TO Szkolenie;


USE Pracownicy;

DROP TABLE Pracownicy3;

CREATE TABLE Pracownicy3 (
ID INTEGER PRIMARY KEY AUTO_INCREMENT,
Imię VARCHAR(30),
Nazwisko VARCHAR(50),
Wiek INTEGER,
Kurs TEXT);

INSERT INTO Pracownicy3 (Imię, Nazwisko, Wiek, Kurs)
VALUES 
("Anna", "NOWAK", 34, "DS"),
("Roman", "KOWALSKI", 42, "DS"),
("Tomasz", "WIŚNIEWSKI", 33, "DS"),
("Agata", "WÓJCIK", 43, "DS"),
("Elżbieta", "KOWALCZYK", 28, "Java"),
("Przemysław", NULL, 34, "Java"),
("Robert", NULL, 35, "Java"),
("Radosław", "ZIELIŃSKI", 38, "Java"),
(NULL, "WOŹNIAK", 26, "Java"),
("Robert", "SZYMAŃSKI", 34, "Java"),
("Radosław", "DĄBROWSKI", 35, NULL),
("Robert", "KOZŁOWSKI", NULL,"UX"),
("Joanna", "MAZUR", 26, "UX"),
("Radosław", "JANKOWSKI", 27, "UX"),
("Patryk", "LEWANDOWSKI", 28, "Tester"),
(NULL, "ZIELIŃSKI", 28, "Tester"),
("Andrzej", "WOŹNIAK", 31, "Tester"),
("Andrzej", "LEWANDOWSKI", 30, "Tester"),
("Roman", NULL, 39, "Tester"),
("Ewa", "WOŹNIAK", 31, "Tester");

SELECT * FROM Pracownicy3;

SELECT * FROM Pracownicy3
WHERE Nazwisko LIKE "Kowalczyk";

SELECT * FROM Pracownicy3
WHERE wiek >= 30 AND wiek <= 40;

SELECT * FROM Pracownicy3
WHERE nazwisko NOT LIKE '%and%';

SELECT * FROM Pracownicy3
WHERE ID >= 1 AND ID <= 7;

SELECT * FROM Pracownicy3
WHERE ID IS NOT NULL
AND Imię IS NOT NULL
AND Nazwisko IS NOT NULL
AND Wiek IS NOT NULL
AND Kurs IS NOT NULL;

SELECT * FROM Pracownicy3
WHERE Kurs IS NULL;

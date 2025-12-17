CREATE DATABASE Pracownicy;

CREATE TABLE Pracownicy (
ID INTEGER PRIMARY KEY AUTO_INCREMENT,
Imię VARCHAR(30) NOT NULL,
Nazwisko VARCHAR(50) NOT NULL,
Wiek INTEGER NOT NULL,
Kurs TEXT);

SELECT * FROM Pracownicy;

INSERT INTO Pracownicy (Imię, Nazwisko, Wiek, Kurs)
VALUES 
("Anna", "NOWAK", 34, "DS"),
("Roman", "KOWALSKI", 42, "DS"),
("Tomasz", "WIŚNIEWSKI", 33, "DS"),
("Agata", "WÓJCIK", 43, "DS"),
("Elżbieta", "KOWALCZYK", 28, "Java"),
("Przemysław", "KAMIŃSKI", 34, "Java"),
("Robert", "LEWANDOWSKI", 35, "Java"),
("Radosław", "ZIELIŃSKI", 38, "Java"),
("Anna", "WOŹNIAK", 26, "Java"),
("Robert", "SZYMAŃSKI", 34, "Java"),
("Radosław", "DĄBROWSKI", 35, "UX"),
("Robert", "KOZŁOWSKI", 38, "UX"),
("Joanna", "MAZUR", 26, "UX"),
("Radosław", "JANKOWSKI", 27, "UX"),
("Patryk", "LEWANDOWSKI", 28, "Tester"),
("Patryk", "ZIELIŃSKI", 28, "Tester"),
("Andrzej", "WOŹNIAK", 31, "Tester"),
("Andrzej", "LEWANDOWSKI", 30, "Tester"),
("Roman", "ZIELIŃSKI", 39, "Tester"),
("Ewa", "WOŹNIAK", 31, "Tester");

SELECT * FROM Pracownicy
WHERE Wiek >= 30;

SELECT * FROM Pracownicy
WHERE Wiek < 30;

SELECT * FROM Pracownicy
WHERE Nazwisko LIKE "K%ki";

ALTER TABLE Pracownicy
RENAME COLUMN ID TO NR;

SELECT * FROM Pracownicy
WHERE NR IS NULL
OR Imię IS NULL
OR Nazwisko IS NULL
OR Wiek IS NULL
OR Kurs IS NULL;

SELECT * FROM Pracownicy
WHERE Kurs = "Java";

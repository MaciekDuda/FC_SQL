USE Pracownicy;

CREATE TABLE Pracownicy2 (
ID INTEGER PRIMARY KEY AUTO_INCREMENT,
Imię VARCHAR(30) NOT NULL,
Nazwisko VARCHAR(50) NOT NULL,
Wiek INTEGER NOT NULL,
Kurs TEXT);

INSERT INTO Pracownicy2 (Imię, Nazwisko, Wiek, Kurs)
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

SELECT * FROM Pracownicy2;

SELECT * FROM Pracownicy2
WHERE wiek = 28;

SELECT * FROM Pracownicy2
WHERE wiek <= 30;

SELECT * FROM Pracownicy2
WHERE Nazwisko LIKE "%ski%";

SELECT * FROM Pracownicy2
WHERE ID IN (1, 4, 7, 18, 20);

SELECT * FROM Pracownicy2
WHERE ID IS NOT NULL
AND Imię IS NOT NULL
AND Nazwisko IS NOT NULL
AND Wiek IS NOT NULL
AND Kurs IS NOT NULL;

SELECT * FROM Pracownicy2
WHERE Kurs != "DS";



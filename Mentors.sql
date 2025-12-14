CREATE DATABASE School_Coding;

CREATE TABLE Mentors (
id INTEGER PRIMARY KEY,
Imię TEXT NOT NULL,
Nazwisko TEXT NOT NULL,
Specjalizacja TEXT,
Data_zatrudnienia DATE NOT NULL,
Data_zwolenienia DATE
);

INSERT INTO Mentors VALUES (1, "Adam", "Nowak", "JavaScript", "2024-09-01", "2025-11-30");
INSERT INTO Mentors VALUES (2, "Marek", "Kowalski", "JavaScript", "2024-09-01", "2025-07-31");
INSERT INTO Mentors VALUES (3, "Paweł", "Staszak", "Python", "2024-09-01", "2025-07-31");
INSERT INTO Mentors VALUES (4, "Anna", "Miler", "Python", "2024-10-01", "2025-03-31");
INSERT INTO Mentors VALUES (5, "Jan", "Kasprzak", "Python", "2024-10-01", "2025-11-30");
INSERT INTO Mentors VALUES (6, "Grzegorz", "Jackowski", "Java", "2024-09-01", "2025-04-30");
INSERT INTO Mentors VALUES (7, "Magdalena", "Nowicka", "Java", "2024-12-01", "2025-06-30");
INSERT INTO Mentors VALUES (8, "Katarzyna", "Marchewka", "C++", "2025-01-01", "2025-11-30");
INSERT INTO Mentors VALUES (9, "Tomasz", "Rogoż", "Ruby", "2024-12-01", "2025-07-31");
INSERT INTO Mentors VALUES (10, "Joanna", "Pawlak", "Pascal", "2025-01-01", "2025-09-30");


SELECT * FROM Mentors;

UPDATE Mentors
SET Nazwisko = "Pawian"
WHERE id = 5;

SELECT * FROM Mentors
WHERE id = 5;

UPDATE Mentors
SET Specjalizacja = "TypeScript"
WHERE id = 9;

SELECT * FROM Mentors
WHERE id = 9;

ALTER TABLE Mentors ADD COLUMN Wynagrodzenie INTEGER DEFAULT 0;

UPDATE Mentors
SET Wynagrodzenie = 1000
WHERE id LIMIT 3;

SELECT * FROM Mentors
WHERE id LIMIT 3;

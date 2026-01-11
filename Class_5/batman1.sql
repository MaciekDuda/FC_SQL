CREATE DATABASE aggregates;
CREATE TABLE aggregates.batman(
  id INTEGER PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  sex CHAR(1),
  age INTEGER,
  price DOUBLE,
  start_date DATE,
  gift TEXT
);
INSERT INTO aggregates.batman VALUES (1, 'Alicja', 'Rogal', 'F', 16, 100.25,'2020-01-02', 'rower' );
INSERT INTO aggregates.batman VALUES (2, 'Iwona', 'Kowalska', 'F', 33, 56.58, '2020-01-03', 'komputer');
INSERT INTO aggregates.batman VALUES (3, 'Igor', 'Kowalski', 'M', 50, 68.00, '2020-01-04', 'karty');
INSERT INTO aggregates.batman VALUES (4, 'Kamil', 'Juszczak', 'M', 50, 40.87, '2020-01-05', 'piłka'); 
INSERT INTO aggregates.batman VALUES (5, 'Konrad', 'Kowal', 'M', 18, 32.63, '2020-01-06', 'herbata' );
INSERT INTO aggregates.batman VALUES (6, 'Iwona', 'Feniks', 'F', 35, 78.98, '2020-01-07', 'okno' );
INSERT INTO aggregates.batman VALUES (7, 'Robert', 'Lew', 'M', 40, 120.32, '2020-01-08', 'drzwi');
INSERT INTO aggregates.batman VALUES (8, 'Tomasz', 'Nowak', 'M', 60, 150.00, '2020-01-09', 'korona');
INSERT INTO aggregates.batman VALUES (9, 'Aldona', 'Buk', NULL, NULL, 121.25, '2020-01-10', 'wycieczka');

-- 1a
SELECT COUNT(id) FROM batman;

-- 1b
SELECT COUNT(age) FROM batman;

-- 1c
SELECT COUNT(*) FROM batman
	WHERE sex = 'M' AND age > 40;
    
-- 1d
SELECT SUM(price) FROM batman;

-- 1e
SELECT SUM(age) FROM batman
	WHERE sex = 'F';
    
-- 1f
SELECT SUM(price) AS value FROM batman
	WHERE gift IN ('komputer', 'okno');

-- 1g
SELECT MAX(price) FROM batman;

-- 1h
SELECT MAX(start_date) FROM batman;

-- 1i
SELECT MAX(last_name) FROM batman;

-- 1j
SELECT MIN(price) FROM batman;

-- 1k
SELECT MIN(start_date) FROM batman;

-- 1l
SELECT MIN(last_name) FROM batman;

-- 1m
SELECT 
	MAX(price) AS max_price,
	MIN(price) AS min_price 
FROM batman;

-- 1n
SELECT
	MAX(price) AS max_price,
	MIN(price) AS min_price,
	MAX(price) - MIN(price) AS diff
FROM batman;

-- 1o
SELECT AVG(age) FROM batman;

-- 1p
SELECT
	SUM(age) AS age_sum,
	COUNT(age) AS cnt,
	SUM(age) / COUNT(age) AS age_avg
FROM batman; 

-- 1q
SELECT 
    sex,
    AVG(age) AS avg_age
FROM batman
WHERE sex IS NOT NULL
GROUP BY sex;

-- 2a
SELECT 
	ROUND(AVG(age), 2) AS avg_age
FROM batman;

-- 2b
SELECT ABS(-3) AS absolute_val;

-- 2c
SELECT 2 * 3 AS mulitply;

-- 2d
SELECT ROUND((6 / 2), 0)AS divide;


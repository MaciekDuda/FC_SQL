
-- Pkt 1
CREATE DATABASE clothing_store;
USE clothing_store;

-- pkt 2
CREATE TABLE manufacturer(
	manufacturer_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    manufacturer_name VARCHAR(100) NOT NULL,
    manufacturer_address VARCHAR(150) NOT NULL,
    manufacturer_NIP CHAR(10) NOT NULL UNIQUE,
    contract_date DATE NOT NULL
);
ALTER TABLE manufaturers RENAME TO manufacturers;

-- pkt 3
CREATE TABLE products(
	product_id INTEGER PRIMARY KEY AUTO_INCREMENT,
	manufacturer_id INTEGER NOT NULL,
	product_name VARCHAR(100) NOT NULL,
	product_descrp TEXT,
	buy_price_netto DECIMAL(10, 2) NOT NULL,
	buy_price_brutto DECIMAL(10, 2) NULL,
	sell_price_netto DECIMAL(10, 2) NULL,
	sell_price_brutto DECIMAL(10, 2) NULL,
	vat_tax DECIMAL(4, 2) NOT NULL
);
-- pkt 4
CREATE TABLE orders(
	order_id INTEGER PRIMARY KEY AUTO_INCREMENT,
	customer_id INTEGER NOT NULL,
	product_id INTEGER NOT NULL,
	order_date DATE NOT NULL
);

-- pkt 5
CREATE TABLE customers(
	customer_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    customer_first_name VARCHAR(50) NOT NULL,
    customer_last_name VARCHAR(50) NOT NULL,
    adress VARCHAR(200) NOT NULL
);
 
-- pkt 6 
ALTER TABLE products
ADD CONSTRAINT fk_manufacturer
FOREIGN KEY (manufacturer_id) REFERENCES manufacturers(manufacturer_id);

ALTER TABLE orders
ADD CONSTRAINT fk_product
FOREIGN KEY (product_id) REFERENCES products(product_id);

ALTER TABLE orders
ADD CONSTRAINT fk_customer
FOREIGN KEY (customer_id) REFERENCES customers(customer_id);

-- pkt 7 
INSERT INTO manufacturers (manufacturer_name, manufacturer_address, manufacturer_NIP, contract_date)
VALUES 
('Nike', 'ul. Sportowa 10, Warszawa', '1234567890', '2023-01-15'),
('Adidas', 'ul. Atletyczna 25, Kraków', '2345678901', '2023-03-20'),
('Reebok', 'ul. Fitness 8, Gdańsk', '3456789012', '2023-05-10'),
('4F', 'ul. Polska 33, Poznań', '4567890123', '2023-07-01');

SELECT * FROM clothing_store.manufacturers;

INSERT INTO products (manufacturer_id, product_name, product_descrp, buy_price_netto, buy_price_brutto, sell_price_netto, sell_price_brutto, vat_tax)
VALUES 
-- Nike
(1, 'Nike Air Max', 'Buty sportowe męskie', 250.00, 307.50, 400.00, 492.00, 23.00),
(1, 'Nike Dri-FIT Koszulka', 'Koszulka sportowa damska', 80.00, 98.40, 130.00, 159.90, 23.00),
(1, 'Nike Pro Leginsy', 'Leginsy treningowe', 120.00, 147.60, 200.00, 246.00, 23.00),
(1, 'Nike Sportswear Bluza', 'Bluza z kapturem', 150.00, 184.50, 250.00, 307.50, 23.00),
(1, 'Nike Running Spodenki', 'Spodenki do biegania', 60.00, 73.80, 100.00, 123.00, 23.00),
-- Adidas
(2, 'Adidas Ultraboost', 'Buty do biegania', 300.00, 369.00, 480.00, 590.40, 23.00),
(2, 'Adidas Essentials Bluza', 'Bluza męska', 140.00, 172.20, 220.00, 270.60, 23.00),
(2, 'Adidas Tiro Spodnie', 'Spodnie treningowe', 110.00, 135.30, 180.00, 221.40, 23.00),
(2, 'Adidas 3-Stripes Koszulka', 'Koszulka damska', 70.00, 86.10, 115.00, 141.45, 23.00),
(2, 'Adidas Originals Buty', 'Buty lifestyle', 200.00, 246.00, 320.00, 393.60, 23.00),
-- Reebok
(3, 'Reebok Classic', 'Buty casual', 180.00, 221.40, 290.00, 356.70, 23.00),
(3, 'Reebok CrossFit Koszulka', 'Koszulka treningowa', 90.00, 110.70, 145.00, 178.35, 23.00),
(3, 'Reebok Workout Legginsy', 'Legginsy fitness', 100.00, 123.00, 160.00, 196.80, 23.00),
(3, 'Reebok Training Spodenki', 'Spodenki męskie', 65.00, 79.95, 105.00, 129.15, 23.00),
(3, 'Reebok Vector Bluza', 'Bluza sportowa', 130.00, 159.90, 210.00, 258.30, 23.00),
-- 4F
(4, '4F Kurtka zimowa', 'Kurtka puchowa', 220.00, 270.60, 350.00, 430.50, 23.00),
(4, '4F Polar', 'Bluza polarowa', 85.00, 104.55, 140.00, 172.20, 23.00),
(4, '4F Spodnie narciarskie', 'Spodnie zimowe', 180.00, 221.40, 290.00, 356.70, 23.00),
(4, '4F Koszulka techniczna', 'Koszulka termoaktywna', 55.00, 67.65, 90.00, 110.70, 23.00),
(4, '4F Czapka', 'Czapka zimowa', 30.00, 36.90, 50.00, 61.50, 23.00);

SELECT * FROM clothing_store.products;

INSERT INTO customers (customer_first_name, customer_last_name, adress)
VALUES 
('Maciej', 'Duda', 'ul. Złote Łąki 12, Kościelna Wieś'),
('Anna', 'Nowak', 'ul. Słoneczna 12, Kraków'),
('Piotr', 'Wiśniewski', 'ul. Leśna 8, Gdańsk'),
('Maria', 'Wójcik', 'ul. Polna 15, Wrocław'),
('Tomasz', 'Kamiński', 'ul. Parkowa 20, Poznań'),
('Katarzyna', 'Lewandowska', 'ul. Różana 3, Łódź'),
('Michał', 'Zieliński', 'ul. Morska 7, Sopot'),
('Magdalena', 'Kowalska', 'ul. Górska 11, Zakopane'),
('Krzysztof', 'Woźniak', 'ul. Spacerowa 9, Lublin'),
('Agnieszka', 'Dąbrowska', 'ul. Cicha 6, Katowice');

SELECT * FROM clothing_store.customers;

INSERT INTO orders (customer_id, product_id, order_date)
VALUES 
(1, 1, '2024-01-10'),
(2, 6, '2024-01-15'),
(3, 11, '2024-01-20'),
(4, 16, '2024-02-05'),
(5, 2, '2024-02-10'),
(1, 7, '2024-02-15'),
(6, 3, '2024-03-01'),
(7, 12, '2024-03-05'),
(8, 17, '2024-03-10'),
(9, 8, '2024-03-15');

SELECT * FROM clothing_store.orders;

-- pkt 8 i 9
SELECT products.*
FROM products
JOIN manufacturers ON products.manufacturer_id = manufacturers.manufacturer_id
WHERE manufacturers.manufacturer_id = 1
ORDER BY products.product_name ASC;

 -- pkt 10 
 SELECT AVG(sell_price_brutto) AS avg_price_brutto
 FROM products
 WHERE manufacturer_id = 1;
 
 -- pkt 11
 SELECT product_name, sell_price_netto,
    CASE 
        WHEN sell_price_brutto <= (SELECT AVG(sell_price_brutto) FROM products WHERE manufacturer_id = 1)
        THEN 'Tanie'
        ELSE 'Drogie'
    END AS price_group
FROM products
WHERE manufacturer_id = 1
ORDER BY sell_price_brutto;

-- pkt 12
SELECT products.product_name
FROM orders
JOIN products ON orders.product_id = products.product_id;

-- pkt 13
SELECT products.*
FROM orders
JOIN products ON orders.product_id = products.product_id
LIMIT 5;

-- pkt 14
SELECT SUM(products.sell_price_brutto) AS total_sell_value
FROM orders
JOIN products ON orders.product_id = products.product_id;

-- pkt 15
SELECT orders.order_id, orders.order_date, products.product_name
FROM orders 
JOIN products ON orders.product_id = products.product_id
ORDER BY orders.order_date ASC;

-- pkt 16
SELECT *
FROM products
WHERE product_descrp IS NULL 
OR buy_price_brutto IS NULL 
OR sell_price_netto IS NULL 
OR sell_price_brutto IS NULL;

-- pkt 17
SET SQL_SAFE_UPDATES = 0;

DELETE FROM orders;

INSERT INTO orders (customer_id, product_id, order_date)
VALUES 
(1, 1, '2024-01-10'),
(2, 1, '2024-01-12'),
(3, 1, '2024-02-05'),
(4, 1, '2024-03-01'),
(5, 1, '2024-03-15'),
(2, 6, '2024-01-15'),
(6, 6, '2024-02-10'),
(7, 6, '2024-03-10'),
(5, 2, '2024-02-10'),
(8, 2, '2024-03-05'),
(3, 11, '2024-01-20'),
(9, 11, '2024-03-15'),
(4, 16, '2024-02-05'),
(1, 7, '2024-02-15'),
(6, 3, '2024-03-01'),
(7, 12, '2024-03-05'),
(8, 17, '2024-03-10'),
(9, 8, '2024-03-15'),
(10, 5, '2024-03-15'),
(1, 9, '2024-03-10'),
(2, 10, '2024-03-01');

SELECT * FROM clothing_store.orders;

SELECT products.product_name, products.sell_price_brutto, COUNT(orders.product_id) AS sell_count
FROM orders
JOIN products ON orders.product_id = products.product_id
GROUP BY orders.product_id, products.product_name, products.sell_price_brutto
ORDER BY sell_count DESC
LIMIT 3;

-- pkt 18
SELECT order_date, COUNT(*) AS orders_count
FROM orders
GROUP BY order_date
ORDER BY orders_count DESC
LIMIT 3;

 
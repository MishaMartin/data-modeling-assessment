-- ARTIST TABLE

INSERT INTO artist
(name)
VALUES
('Lizzo'), ('Lil Nas X'), ('Pink');

SELECT * From artist
WHERE artist_id < 6
ORDER BY name ASC 
;

-- EMPLOYEE TABLE

SELECT first_name, last_name
FROM employee
WHERE city = 'Calgary';

SELECT * FROM employee
WHERE first_name = 'Nancy' AND last_name = 'Edwards';

SELECT * FROM employee 
WHERE reports_to = 2;

SELECT COUNT(*) 
FROM employee 
WHERE city = 'Lethbridge';

-- INVOICE TABLE

SELECT COUNT(*)
FROM invoice
WHERE billing_country = 'USA';

SELECT MAX(total)
FROM invoice;

SELECT MIN(total)
FROM invoice;

SELECT *
FROM invoice
WHERE total > 5;

SELECT *
FROM invoice
WHERE total < 5;

SELECT SUM(total)
FROM invoice;

-- JOIN QUERIES (VARIOUS TABLES)

SELECT *
FROM invoice i
JOIN invoice_line il ON i.invoice_id = il.invoice_id
WHERE il.unit_price > 0.99;

SELECT i.invoice_date, c.first_name, c.last_name, i.total
FROM invoice i
JOIN customer c ON c.customer_id = i.customer_id;

SELECT c.first_name, c.last_name, e.first_name, e.last_name
FROM customer c
JOIN employee e ON e.employee_id = c.support_rep_id;

SELECT a.name, al.title
FROM artist a
JOIN album al ON al.artist_id = a.artist_id;
-- Artist Table --

INSERT INTO artist(
  name)
  VALUES 
  ('The Moody Blues');
  
INSERT INTO artist(
  name)
  VALUES 
  ('Red Hot Chili Peppers');
  
INSERT INTO artist(
  name)
  VALUES 
  ('Cat Powers');


SELECT * FROM artist
ORDER BY name ASC
LIMIT 5;

-- Employee Table --

SELECT first_name, last_name
FROM employee
WHERE city = 'Calgary';

SELECT * FROM employee
WHERE reports_to = 2;

SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge';

-- Invoice -- 

SELECT COUNT(total) FROM invoice
WHERE billing_country = 'USA';

SELECT MAX(total) FROM invoice;

SELECT MIN(total) FROM invoice;

SELECT * FROM invoice
WHERE total > 5;

SELECT COUNT(total) FROM invoice
WHERE total < 5;

SELECT sum(total) FROM invoice;

-- JOIN Queries --

SELECT i.*, inv.unit_price
FROM invoice i
JOIN invoice_line inv ON i.invoice_id = inv.invoice_id
WHERE unit_price > .99;

SELECT i.invoice_date, c.first_name, c.last_name, i.total
FROM invoice i
JOIN customer c ON i.customer_id = c.customer_id;

SELECT c.first_name "Customer First Name", c.last_name "Customer Last Name", 
e.first_name "Employee First Name", e.last_name "Employee Last Name"
FROM customer c
JOIN employee e ON c.support_rep_id = e.employee_id;

SELECT al.title, ar.name
FROM album al
JOIN artist ar ON al.artist_id = ar.artist_id; 
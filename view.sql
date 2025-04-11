CREATE VIEW book_list AS
SELECT id, title, price FROM books;

CREATE VIEW customer_orders AS
SELECT c.id, c.name, COUNT(o.id) AS order_count
FROM customers c
LEFT JOIN orders o ON c.id = o.customer_id
GROUP BY c.id, c.name;
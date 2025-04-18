-- TEST TRIGGERS

-- UPDATE STOCK
SELECT id, title, stock_quantity FROM books WHERE id = 18;

SELECT MAX(id)+1 FROM orders;

INSERT INTO orders (id, customer_id, total_amount, status)
VALUES ((SELECT MAX(id)+1 FROM orders), 1, 99.99, 'pending') 
RETURNING *;

INSERT INTO order_items (order_id, book_id, quantity, price_at_purchase)
VALUES ("the number of the order", 18, 3, 10.99);

SELECT id, title, stock_quantity FROM books WHERE id = 18;

-- SET ORDER DATE ( INSERT ORDER WITHOUT DATE )
INSERT INTO orders (id, customer_id, total_amount, status)
VALUES ((SELECT MAX(id)+1 FROM orders), 1, 49.99, 'processing') 
RETURNING id, order_date;  -- Show auto-generated timestamp

SELECT NOW() - order_date AS age FROM orders WHERE id = currval('orders_id_seq');

-- CHECK TITLE
-- This should FAIL (empty title)
INSERT INTO books (id, title, price, publisher_id)
VALUES ((SELECT MAX(id)+1 FROM books), '', 9.99, 1);

-- PROCEDURE
CALL add_book('The Great Gatsby', 12.99, 1, 10);
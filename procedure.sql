CREATE OR REPLACE PROCEDURE add_book(
    title TEXT,
    price DECIMAL(10,2),
    publisher_id INT
)
LANGUAGE SQL
AS $$
INSERT INTO books(id, title, price, stock_quantity, publisher_id)
VALUES (id, title, price, stock_quantity, publisher_id)
RETURNING id;
$$;

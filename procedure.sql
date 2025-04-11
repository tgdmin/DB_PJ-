CREATE OR REPLACE PROCEDURE add_book(
    title TEXT,
    price DECIMAL(10,2),
    publisher_id INT
)
LANGUAGE SQL
AS $$
INSERT INTO books(title, price, publisher_id)
VALUES (title, price, publisher_id)
RETURNING id;
$$;
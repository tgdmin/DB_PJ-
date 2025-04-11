CREATE OR REPLACE FUNCTION update_stock()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE books
    SET stock_quantity = stock_quantity - NEW.quantity
    WHERE id = NEW.book_id;
    RETURN NEW;
END;
$$;

CREATE TRIGGER after_order
AFTER INSERT ON order_items
FOR EACH ROW
EXECUTE FUNCTION update_stock();

CREATE OR REPLACE FUNCTION set_order_date()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
BEGIN
    NEW.order_date = NOW();
    RETURN NEW;
END;
$$;

CREATE TRIGGER before_order
BEFORE INSERT ON orders
FOR EACH ROW
EXECUTE FUNCTION set_order_date();

CREATE OR REPLACE FUNCTION check_title()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
BEGIN
    IF NEW.title = '' THEN
        RAISE EXCEPTION 'Book title cannot be empty';
    END IF;
    RETURN NEW;
END;
$$;

CREATE TRIGGER before_book_insert
BEFORE INSERT ON books
FOR EACH ROW
EXECUTE FUNCTION check_title();
CREATE VIEW book_list AS
SELECT id, title, price FROM books;

CREATE VIEW customer_orders AS
SELECT c.id, c.name, COUNT(o.id) AS order_count
FROM customers c
LEFT JOIN orders o ON c.id = o.customer_id
GROUP BY c.id, c.name;

CREATE OR REPLACE VIEW top_selling_books AS
SELECT 
    b.id,
    b.title,
    a.name AS author,
    p.name AS publisher,
    -- Calculate original stock 
    (b.stock_quantity + COALESCE(SUM(oi.quantity), 0)) AS original_stock,
    b.stock_quantity AS current_stock,
    -- Calculate total sold
    COALESCE(SUM(oi.quantity), 0) AS total_sold,
    -- Calculate percentage sold
    CASE 
        WHEN (b.stock_quantity + COALESCE(SUM(oi.quantity), 0)) > 0 
        THEN ROUND(COALESCE(SUM(oi.quantity), 0) * 100.0 / 
                  (b.stock_quantity + COALESCE(SUM(oi.quantity), 0)), 1)
        ELSE 0 
    END AS percent_sold
FROM 
    books b
LEFT JOIN 
    order_items oi ON b.id = oi.book_id
LEFT JOIN 
    book_authors ba ON b.id = ba.book_id
LEFT JOIN 
    authors a ON ba.author_id = a.id
LEFT JOIN 
    publishers p ON b.publisher_id = p.id
GROUP BY 
    b.id, b.title, a.name, p.name
ORDER BY 
    total_sold DESC, percent_sold DESC
LIMIT 10;

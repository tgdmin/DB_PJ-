CREATE OR REPLACE FUNCTION count_books(author_name TEXT)
RETURNS INT
LANGUAGE SQL
AS $$
SELECT COUNT(*)
FROM book_authors ba
JOIN authors a ON ba.author_id = a.id
WHERE a.name = author_name;
$$;

CREATE OR REPLACE FUNCTION calculate_author_commissions()
RETURNS TABLE (
    author_id INT,
    author_name VARCHAR(100),
    total_sales NUMERIC(10,2),
    total_commission NUMERIC(10,2)
) AS $$
BEGIN
    RETURN QUERY
    SELECT 
        a.id AS author_id,
        a.name AS author_name,
        SUM(oi.quantity * oi.price_at_purchase) AS total_sales,
        ROUND(SUM(oi.quantity * oi.price_at_purchase) * 0.1, 2) AS total_commission
    FROM 
        authors a
    JOIN 
        book_authors ba ON a.id = ba.author_id
    JOIN 
        order_items oi ON ba.book_id = oi.book_id
    GROUP BY 
        a.id, a.name
    ORDER BY 
        total_commission DESC;
END;
$$ LANGUAGE plpgsql;

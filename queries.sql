
-- 1. List All Books
SELECT id, title, price 
FROM books 
ORDER BY title;

-- 2. Find Books Under $10
SELECT title, price 
FROM books 
WHERE price < 10 
ORDER BY price;

-- 3. Count Books by Publisher
SELECT p.name, COUNT(b.id) AS book_count
FROM publishers p
JOIN books b ON p.id = b.publisher_id
GROUP BY p.name
ORDER BY book_count DESC;

-- 4. Show Customer Names and Emails
SELECT name, email, join_date 
FROM customers 
ORDER BY join_date DESC;

-- 5. List All Completed Orders
SELECT id, customer_id, total_amount 
FROM orders 
WHERE status = 'delivered';

-- 6. Find Books by Author (Stephen King)
SELECT b.title, b.price
FROM books b
JOIN book_authors ba ON b.id = ba.book_id
JOIN authors a ON ba.author_id = a.id
WHERE a.name = 'Stephen King';

-- 7. Count Orders per Customer
SELECT c.name, COUNT(o.id) AS order_count
FROM customers c
LEFT JOIN orders o ON c.id = o.customer_id
GROUP BY c.name
ORDER BY order_count DESC;

-- 8. Show Books That Need Restocking
SELECT title, stock_quantity 
FROM books 
WHERE stock_quantity < 20 
ORDER BY stock_quantity;

-- 9. List Recent Orders (Last 30 Days)
SELECT o.id, c.name, o.order_date, o.total_amount
FROM orders o
JOIN customers c ON o.customer_id = c.id
WHERE o.order_date >= CURRENT_DATE - INTERVAL '30 days'
ORDER BY o.order_date DESC;

-- 10. Find Books in Fantasy Genre
SELECT b.title, a.name AS author
FROM books b
JOIN book_genres bg ON b.id = bg.book_id
JOIN genres g ON bg.genre_id = g.id
JOIN book_authors ba ON b.id = ba.book_id
JOIN authors a ON ba.author_id = a.id
WHERE g.name = 'Fantasy';

-- 11. each author's favorite genre
SELECT 
    a.name AS author_name,
    g.name AS favorite_genre,
    COUNT(*) AS books_in_genre
FROM authors a
JOIN book_authors ba ON a.id = ba.author_id
JOIN book_genres bg ON ba.book_id = bg.book_id
JOIN genres g ON bg.genre_id = g.id
GROUP BY a.id, a.name, g.name
HAVING COUNT(*) = (
    SELECT COUNT(*)
    FROM book_authors ba2
    JOIN book_genres bg2 ON ba2.book_id = bg2.book_id
    WHERE ba2.author_id = a.id
    GROUP BY bg2.genre_id
    ORDER BY COUNT(*) DESC
    LIMIT 1
)
ORDER BY a.name;


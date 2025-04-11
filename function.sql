CREATE OR REPLACE FUNCTION count_books(author_name TEXT)
RETURNS INT
LANGUAGE SQL
AS $$
SELECT COUNT(*)
FROM book_authors ba
JOIN authors a ON ba.author_id = a.id
WHERE a.name = author_name;
$$;
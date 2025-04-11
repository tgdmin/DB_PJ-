def test_book_list(db):
    result = db.query("SELECT * FROM book_list")
    assert len(result) > 0

def test_customer_orders(db):
    result = db.query("SELECT * FROM customer_orders")
    assert all('order_count' in row for row in result)

def test_add_book(db):
    db.execute("CALL add_book('Test Book', 9.99, 1)")
    result = db.query("SELECT * FROM books WHERE title = 'Test Book'")
    assert len(result) == 1

def test_count_books(db):
    result = db.query("SELECT count_books('J.K. Rowling')")
    assert result[0][0] > 0

def test_stock_trigger(db):
    initial = db.query("SELECT stock_quantity FROM books WHERE id = 1")[0][0]
    db.execute("INSERT INTO order_items VALUES (1, 1, 1, 10.99)")
    new = db.query("SELECT stock_quantity FROM books WHERE id = 1")[0][0]
    assert new == initial - 1
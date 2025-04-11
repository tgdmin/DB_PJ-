INSERT INTO publishers (id, name, country) VALUES
(1, 'Penguin Random House', 'USA'),
(2, 'HarperCollins', 'USA'),
(3, 'Simon & Schuster', 'USA'),
(4, 'Macmillan', 'UK'),
(5, 'Hachette Livre', 'France'),
(6, 'Scholastic', 'USA'),
(7, 'Oxford University Press', 'UK'),
(8, 'Cambridge University Press', 'UK'),
(9, 'Pearson', 'UK'),
(10, 'Bloomsbury', 'UK'),
(11, 'Wiley', 'USA'),
(12, 'Springer Nature', 'Germany'),
(13, 'Elsevier', 'Netherlands'),
(14, 'McGraw-Hill', 'USA'),
(15, 'Houghton Mifflin Harcourt', 'USA'),
(16, 'Disney Publishing Worldwide', 'USA'),
(17, 'Chronicle Books', 'USA');

INSERT INTO authors (id, name, birth_year) VALUES
(1, 'J.K. Rowling', 1965),
(2, 'Stephen King', 1947),
(3, 'George R.R. Martin', 1948),
(4, 'Margaret Atwood', 1939),
(5, 'Neil Gaiman', 1960),
(6, 'Brandon Sanderson', 1975),
(7, 'John Grisham', 1955),
(8, 'Dan Brown', 1964),
(9, 'James Patterson', 1947),
(10, 'Agatha Christie', 1890),
(11, 'Ernest Hemingway', 1899),
(12, 'Jane Austen', 1775),
(13, 'Mark Twain', 1835),
(14, 'Charles Dickens', 1812),
(15, 'Leo Tolstoy', 1828),
(16, 'Fyodor Dostoevsky', 1821),
(17, 'Gabriel García Márquez', 1927);

INSERT INTO genres (id, name, description) VALUES
(1, 'Fantasy', 'Imaginary worlds and magical elements'),
(2, 'Science Fiction', 'Futuristic technology and space exploration'),
(3, 'Mystery', 'Crime solving and detective stories'),
(4, 'Romance', 'Love stories and emotional relationships'),
(5, 'Thriller', 'Suspenseful and exciting plots'),
(6, 'Horror', 'Scary and supernatural elements'),
(7, 'Historical Fiction', 'Fictional stories set in historical periods'),
(8, 'Biography', 'Non-fiction accounts of people''s lives'),
(9, 'Self-Help', 'Personal development and improvement'),
(10, 'Science', 'Books about scientific topics'),
(11, 'History', 'Accounts of past events'),
(12, 'Travel', 'Books about travel experiences'),
(13, 'Cooking', 'Recipes and culinary techniques'),
(14, 'Art', 'Books about visual arts'),
(15, 'Poetry', 'Literary works in verse form'),
(16, 'Drama', 'Plays and theatrical works'),
(17, 'Children''s', 'Books for young readers');

INSERT INTO customers (id, name, email, phone, join_date) VALUES
(1, 'John Smith', 'john.smith@example.com', '555-0101', '2020-01-15 10:30:00'),
(2, 'Emily Johnson', 'emily.j@example.com', '555-0102', '2020-02-20 11:45:00'),
(3, 'Michael Brown', 'michael.b@example.com', '555-0103', '2020-03-05 09:15:00'),
(4, 'Sarah Davis', 'sarah.d@example.com', '555-0104', '2020-04-10 14:20:00'),
(5, 'Robert Wilson', 'robert.w@example.com', '555-0105', '2020-05-15 13:10:00'),
(6, 'Jennifer Martinez', 'jennifer.m@example.com', '555-0106', '2020-06-20 16:45:00'),
(7, 'William Anderson', 'william.a@example.com', '555-0107', '2020-07-25 10:00:00'),
(8, 'Jessica Thomas', 'jessica.t@example.com', '555-0108', '2020-08-30 12:30:00'),
(9, 'David Taylor', 'david.t@example.com', '555-0109', '2020-09-05 15:20:00'),
(10, 'Elizabeth Lee', 'elizabeth.l@example.com', '555-0110', '2020-10-10 09:45:00'),
(11, 'James White', 'james.w@example.com', '555-0111', '2020-11-15 11:10:00'),
(12, 'Mary Harris', 'mary.h@example.com', '555-0112', '2020-12-20 14:35:00'),
(13, 'Christopher Clark', 'chris.c@example.com', '555-0113', '2021-01-05 10:50:00'),
(14, 'Patricia Lewis', 'patricia.l@example.com', '555-0114', '2021-02-10 13:25:00'),
(15, 'Daniel Walker', 'daniel.w@example.com', '555-0115', '2021-03-15 16:40:00'),
(16, 'Linda Hall', 'linda.h@example.com', '555-0116', '2021-04-20 09:05:00'),
(17, 'Matthew Young', 'matthew.y@example.com', '555-0117', '2021-05-25 12:30:00');

INSERT INTO books (id, title, price, stock_quantity, publisher_id) VALUES
(1, 'Harry Potter and the Philosopher''s Stone', 12.99, 50, 1),
(2, 'The Shining', 9.99, 30, 2),
(3, 'A Game of Thrones', 14.99, 40, 3),
(4, 'The Handmaid''s Tale', 10.99, 35, 4),
(5, 'American Gods', 11.99, 25, 5),
(6, 'The Way of Kings', 15.99, 45, 6),
(7, 'The Firm', 8.99, 20, 7),
(8, 'The Da Vinci Code', 9.99, 30, 8),
(9, 'Along Came a Spider', 7.99, 15, 9),
(10, 'Murder on the Orient Express', 6.99, 25, 10),
(11, 'The Old Man and the Sea', 5.99, 20, 11),
(12, 'Pride and Prejudice', 4.99, 30, 12),
(13, 'Adventures of Huckleberry Finn', 5.99, 25, 13),
(14, 'Great Expectations', 6.99, 20, 14),
(15, 'War and Peace', 12.99, 15, 15),
(16, 'Crime and Punishment', 8.99, 20, 16),
(17, 'One Hundred Years of Solitude', 10.99, 25, 17);

INSERT INTO book_authors (book_id, author_id) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5),
(6, 6), (7, 7), (8, 8), (9, 9), (10, 10),
(11, 11), (12, 12), (13, 13), (14, 14), (15, 15),
(16, 16), (17, 17), (1, 5), (2, 6), (3, 7),
(4, 8), (5, 9), (6, 10), (7, 11), (8, 12),
(9, 13), (10, 14), (11, 15), (12, 16), (13, 17),
(14, 1), (15, 2), (16, 3), (17, 4), (1, 6),
(2, 7), (3, 8), (4, 9), (5, 10), (6, 11);

INSERT INTO book_genres (book_id, genre_id) VALUES
(1, 1), (2, 6), (3, 1), (4, 5), (5, 1),
(6, 1), (7, 3), (8, 3), (9, 3), (10, 3),
(11, 4), (12, 4), (13, 7), (14, 7), (15, 7),
(16, 7), (17, 1), (1, 17), (2, 5), (3, 2),
(4, 7), (5, 6), (6, 2), (7, 5), (8, 5),
(9, 5), (10, 3), (11, 7), (12, 4), (13, 7),
(14, 7), (15, 7), (16, 7), (17, 7), (1, 2),
(2, 1), (3, 5), (4, 1), (5, 5), (6, 5);

INSERT INTO orders (id, customer_id, order_date, status, total_amount) VALUES
(1, 1, '2023-01-05 10:15:00', 'delivered', 25.98),
(2, 2, '2023-01-10 11:30:00', 'delivered', 19.98),
(3, 3, '2023-01-15 09:45:00', 'shipped', 44.97),
(4, 4, '2023-01-20 14:10:00', 'processing', 29.97),
(5, 5, '2023-01-25 13:25:00', 'pending', 14.99),
(6, 6, '2023-02-01 16:50:00', 'delivered', 32.97),
(7, 7, '2023-02-05 10:05:00', 'delivered', 21.98),
(8, 8, '2023-02-10 12:35:00', 'shipped', 18.98),
(9, 9, '2023-02-15 15:15:00', 'processing', 27.97),
(10, 10, '2023-02-20 09:40:00', 'pending', 15.98),
(11, 11, '2023-02-25 11:05:00', 'delivered', 23.97),
(12, 12, '2023-03-01 14:30:00', 'delivered', 31.96),
(13, 13, '2023-03-05 10:55:00', 'shipped', 19.98),
(14, 14, '2023-03-10 13:20:00', 'processing', 22.97),
(15, 15, '2023-03-15 16:45:00', 'pending', 17.98),
(16, 16, '2023-03-20 09:10:00', 'delivered', 28.97),
(17, 17, '2023-03-25 12:35:00', 'cancelled', 10.99);

INSERT INTO order_items (order_id, book_id, quantity, price_at_purchase) VALUES
(1, 1, 2, 12.99),
(2, 2, 2, 9.99),
(3, 3, 3, 14.99),
(4, 4, 3, 10.99),
(5, 5, 1, 14.99),
(6, 6, 3, 10.99),
(7, 7, 2, 10.99),
(8, 8, 2, 9.99),
(9, 9, 3, 9.99),
(10, 10, 2, 7.99),
(11, 11, 3, 7.99),
(12, 12, 4, 7.99),
(13, 13, 2, 9.99),
(14, 14, 3, 7.99),
(15, 15, 2, 8.99),
(16, 16, 3, 9.99),
(17, 17, 1, 10.99),
(1, 2, 1, 9.99),
(2, 3, 1, 14.99),
(3, 4, 1, 10.99),
(4, 5, 1, 14.99),
(5, 6, 1, 10.99),
(6, 7, 1, 10.99),
(7, 8, 1, 9.99),
(8, 9, 1, 9.99),
(9, 10, 1, 7.99),
(10, 11, 1, 7.99),
(11, 12, 1, 7.99),
(12, 13, 1, 9.99),
(13, 14, 1, 7.99),
(14, 15, 1, 8.99),
(15, 16, 1, 9.99),
(16, 17, 1, 10.99),
(17, 1, 1, 12.99);

INSERT INTO payments (order_id, amount, payment_date, status) VALUES
(1, 25.98, '2023-01-05', 'completed'),
(2, 19.98, '2023-01-10', 'completed'),
(3, 44.97, '2023-01-15', 'completed'),
(4, 29.97, '2023-01-20', 'pending'),
(5, 14.99, '2023-01-25', 'pending'),
(6, 32.97, '2023-02-01', 'completed'),
(7, 21.98, '2023-02-05', 'completed'),
(8, 18.98, '2023-02-10', 'completed'),
(9, 27.97, '2023-02-15', 'pending'),
(10, 15.98, '2023-02-20', 'pending'),
(11, 23.97, '2023-02-25', 'completed'),
(12, 31.96, '2023-03-01', 'completed'),
(13, 19.98, '2023-03-05', 'completed'),
(14, 22.97, '2023-03-10', 'pending'),
(15, 17.98, '2023-03-15', 'pending'),
(16, 28.97, '2023-03-20', 'completed'),
(17, 10.99, '2023-03-25', 'refunded');
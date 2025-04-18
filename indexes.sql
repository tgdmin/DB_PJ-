CREATE INDEX book_title_idx ON books(title);
--Purpose: Optimizes title-based searches.
--Frequent WHERE clauses: If you often query books by title (e.g., WHERE title LIKE 'Harry Potter%'), this index speeds up searches.
--Sorting (ORDER BY title): Makes alphabetical sorting of books faster.
--JOIN operations: Improves performance when joining tables on book titles.
--Text search: While not a full-text index, it helps with simple pattern matching.

CREATE INDEX order_customer_idx ON orders(customer_id);
--Purpose: Accelerates customer order history lookups.
--Foreign key relationship: Since customer_id references customers(id), this index speeds up JOINs between orders and customers.
--Common filtering: Queries like WHERE customer_id = 5 (finding all orders for a customer) become faster.
--Aggregation: Helps with queries counting orders per customer.
--OLTP workload: In transactional systems, order retrieval by customer is frequent.

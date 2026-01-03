-- ===========================================
-- DAY 2: ORDER BY, LIMIT, DISTINCT
-- Matthew Shores
-- January 3, 2025
-- ===========================================

-- ===========================================
-- LESSON 1: ORDER BY Basics
-- ===========================================

-- Query 1: Order by name (alphabetical A-Z)
SELECT * FROM employees ORDER BY first_name;

-- Query 2: Order by salary (lowest to highest)
SELECT first_name, last_name, salary
FROM employees
ORDER BY salary;

-- Query 3: Order descending (highest to lowest)
SELECT first_name, last_name, salary
FROM employees
ORDER BY salary DESC;

-- Query 4: Order by date (newest first)
SELECT first_name, hire_date
FROM employees
ORDER BY hire_date DESC;

-- ===========================================
-- LESSON 2: Multiple Column Sorting
-- ===========================================

-- Query 5: Sort by department, then by salary within each department
SELECT first_name, department, salary
FROM employees
ORDER BY department, salary DESC;

-- Query 6: Sort by state, then by last name
SELECT first_name, last_name, state
FROM customers
ORDER BY state, last_name;

-- ===========================================
-- LESSON 3: LIMIT
-- ===========================================

-- Query 7: First 5 employees
SELECT * FROM employees LIMIT 5;

-- Query 8: First 3 products
SELECT * FROM products LIMIT 3;

-- Query 9: First 10 orders
SELECT * FROM orders LIMIT 10;

-- ===========================================
-- LESSON 4: ORDER BY + LIMIT (Very Powerful!)
-- ===========================================

-- Query 10: Top 3 highest paid employees
SELECT first_name, last_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 3;

-- Query 11: 5 cheapest products
SELECT name, unit_price
FROM products
ORDER BY unit_price
LIMIT 5;

-- Query 12: 3 most recent orders
SELECT * FROM orders
ORDER BY order_date DESC
LIMIT 3;

-- Query 13: Top 5 customers by points
SELECT first_name, last_name, points
FROM customers
ORDER BY points DESC
LIMIT 5;

-- ===========================================
-- LESSON 5: OFFSET (Pagination)
-- ===========================================

-- Query 14: Skip first 3, get next 3 employees
SELECT * FROM employees
LIMIT 3 OFFSET 3;

-- Query 15: Page 1 (first 5)
SELECT * FROM products
ORDER BY name
LIMIT 5 OFFSET 0;

-- Query 16: Page 2 (next 5)
SELECT * FROM products
ORDER BY name
LIMIT 5 OFFSET 5;

-- Query 17: Get employees ranked 4th-6th by salary
SELECT first_name, last_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 3 OFFSET 3;

-- ===========================================
-- LESSON 6: DISTINCT
-- ===========================================

-- Query 18: All unique departments
SELECT DISTINCT department FROM employees;

-- Query 19: All unique states
SELECT DISTINCT state FROM customers;

-- Query 20: Unique categories
SELECT DISTINCT category FROM products;

-- Query 21: Unique order statuses
SELECT DISTINCT status FROM orders;

-- Query 22: Distinct with ORDER BY
SELECT DISTINCT state
FROM customers
ORDER BY state;

-- ===========================================
-- PRACTICE: Combining Everything
-- ===========================================

-- Query 23: IT employees sorted by salary (highest first)
SELECT first_name, last_name, salary
FROM employees
WHERE department = 'IT'
ORDER BY salary DESC;

-- Query 24: Top 3 most expensive products over $50
SELECT name, unit_price
FROM products
WHERE unit_price > 50
ORDER BY unit_price DESC
LIMIT 3;

-- Query 25: Pending orders, most recent first
SELECT * FROM orders
WHERE status = 'Pending'
ORDER BY order_date DESC;

-- Query 26: Unique suppliers for products under $5
SELECT DISTINCT supplier
FROM products
WHERE unit_price < 5;

-- Query 27: Bottom 3 employees by salary
SELECT first_name, last_name, salary
FROM employees
ORDER BY salary
LIMIT 3;

-- Query 28: Customers from CA or TX, sorted by points
SELECT first_name, last_name, state, points
FROM customers
WHERE state IN ('CA', 'TX')
ORDER BY points DESC;

-- Query 29: Second page of customers (skip 5, get 5)
SELECT * FROM customers
ORDER BY customer_id
LIMIT 5 OFFSET 5;

-- Query 30: Top 5 highest invoices
SELECT invoice_id, client_id, invoice_total
FROM invoices
ORDER BY invoice_total DESC
LIMIT 5;

-- ===========================================
-- BONUS: Real-World Scenarios
-- ===========================================

-- Query 31: "Show me our highest paid employee"
SELECT first_name, last_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 1;

-- Query 32: "What departments do we have?"
SELECT DISTINCT department FROM employees;

-- Query 33: "Show newest 5 orders"
SELECT customer_name, order_date, total_amount
FROM orders
ORDER BY order_date DESC
LIMIT 5;

-- Query 34: "List products A-Z, first 10"
SELECT name, unit_price
FROM products
ORDER BY name
LIMIT 10;

-- Query 35: "Which states are our customers in?"
SELECT DISTINCT state
FROM customers
ORDER BY state;

-- ===========================================
-- END OF DAY 2 - 35 QUERIES COMPLETED!
-- ===========================================


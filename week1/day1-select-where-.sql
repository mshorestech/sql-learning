-- ===========================================
-- DAY 1: SELECT and WHERE Fundamentals
-- Matthew Shores
-- January 2, 2025
-- ===========================================

-- ===========================================
-- LESSON 1: Basic SELECT
-- ===========================================

-- Query 1: Select everything from employees
SELECT * FROM employees;

-- Query 2: Select specific columns
SELECT first_name, last_name, department FROM employees;

-- Query 3: Select with column alias
SELECT first_name AS "First Name", salary AS "Annual Salary" FROM employees;

-- ===========================================
-- LESSON 2: WHERE Clause (Filtering)
-- ===========================================

-- Query 4: Filter by exact match
SELECT * FROM employees WHERE department = 'IT';

-- Query 5: Filter by number comparison
SELECT first_name, last_name, salary FROM employees WHERE salary > 70000;

-- Query 6: Filter by less than
SELECT * FROM employees WHERE salary < 60000;

-- Query 7: Filter with not equal
SELECT * FROM employees WHERE department != 'Sales';

-- ===========================================
-- LESSON 3: AND / OR Operators
-- ===========================================

-- Query 8: AND - both conditions must be true
SELECT * FROM employees 
WHERE department = 'IT' AND salary > 80000;

-- Query 9: OR - either condition can be true
SELECT * FROM employees 
WHERE department = 'IT' OR department = 'HR';

-- Query 10: Combining AND and OR (use parentheses!)
SELECT * FROM employees 
WHERE (department = 'IT' OR department = 'Sales') AND salary > 70000;

-- ===========================================
-- LESSON 4: LIKE and Wildcards
-- ===========================================

-- Query 11: Starts with 'J'
SELECT * FROM employees WHERE first_name LIKE 'J%';

-- Query 12: Ends with 'son'
SELECT * FROM employees WHERE last_name LIKE '%son';

-- Query 13: Contains 'ar'
SELECT * FROM employees WHERE first_name LIKE '%ar%';

-- Query 14: Email contains 'company'
SELECT first_name, email FROM employees WHERE email LIKE '%company%';

-- ===========================================
-- LESSON 5: IN and BETWEEN
-- ===========================================

-- Query 15: IN - match any in list
SELECT * FROM employees WHERE department IN ('IT', 'HR', 'Marketing');

-- Query 16: BETWEEN - range of values
SELECT * FROM employees WHERE salary BETWEEN 60000 AND 80000;

-- Query 17: Date range
SELECT * FROM employees WHERE hire_date BETWEEN '2020-01-01' AND '2021-12-31';

-- ===========================================
-- LESSON 6: NULL Values
-- ===========================================

-- Query 18: Find NULL values
SELECT * FROM employees WHERE manager_id IS NULL;

-- Query 19: Find NOT NULL values
SELECT * FROM employees WHERE manager_id IS NOT NULL;

-- ===========================================
-- PRACTICE: Products Table
-- ===========================================

-- Query 20: All electronics
SELECT * FROM products WHERE category = 'Electronics';

-- Query 21: Products under $100
SELECT product_name, price FROM products WHERE price < 100;

-- Query 22: Low stock items (under 50)
SELECT product_name, stock_quantity FROM products WHERE stock_quantity < 50;

-- Query 23: TechCorp products over $100
SELECT * FROM products WHERE supplier = 'TechCorp' AND price > 100;

-- Query 24: Furniture or Office Supplies
SELECT * FROM products WHERE category IN ('Furniture', 'Office Supplies');

-- Query 25: Product name contains 'Desk'
SELECT * FROM products WHERE product_name LIKE '%Desk%';

-- ===========================================
-- PRACTICE: Orders Table
-- ===========================================

-- Query 26: Pending orders
SELECT * FROM orders WHERE status = 'Pending';

-- Query 27: Orders over $1000
SELECT customer_name, total_amount FROM orders WHERE total_amount > 1000;

-- Query 28: December orders
SELECT * FROM orders WHERE order_date LIKE '2024-12%';

-- Query 29: Delivered or Shipped orders
SELECT * FROM orders WHERE status IN ('Delivered', 'Shipped');

-- Query 30: Orders from Acme Corp
SELECT * FROM orders WHERE customer_name = 'Acme Corp';

-- ===========================================
-- END OF DAY 1 - 30 QUERIES COMPLETED!
-- ===========================================

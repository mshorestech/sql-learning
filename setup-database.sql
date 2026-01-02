-- ===========================================
-- SQL LEARNING DATABASE
-- Matthew Shores
-- Created: January 2, 2025
-- ===========================================

-- ===========================================
-- EMPLOYEES TABLE (Core practice table)
-- ===========================================
DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
    employee_id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT,
    department TEXT,
    salary INTEGER,
    hire_date TEXT,
    manager_id INTEGER
);

INSERT INTO employees VALUES
(1, 'John', 'Smith', 'john.smith@company.com', 'IT', 75000, '2020-03-15', NULL),
(2, 'Sarah', 'Johnson', 'sarah.j@company.com', 'IT', 82000, '2019-07-22', 1),
(3, 'Michael', 'Williams', 'mike.w@company.com', 'Sales', 65000, '2021-01-10', 5),
(4, 'Emily', 'Brown', 'emily.b@company.com', 'HR', 58000, '2022-05-18', NULL),
(5, 'David', 'Jones', 'david.j@company.com', 'Sales', 90000, '2018-11-30', NULL),
(6, 'Lisa', 'Garcia', 'lisa.g@company.com', 'IT', 78000, '2020-09-14', 1),
(7, 'James', 'Martinez', 'james.m@company.com', 'Marketing', 62000, '2023-02-28', NULL),
(8, 'Jennifer', 'Davis', 'jen.d@company.com', 'Sales', 71000, '2021-08-05', 5),
(9, 'Robert', 'Miller', 'rob.m@company.com', 'IT', 85000, '2019-04-12', 1),
(10, 'Amanda', 'Wilson', 'amanda.w@company.com', 'HR', 54000, '2023-06-20', 4);

-- ===========================================
-- PRODUCTS TABLE
-- ===========================================
DROP TABLE IF EXISTS products;
CREATE TABLE products (
    product_id INTEGER PRIMARY KEY,
    product_name TEXT NOT NULL,
    category TEXT,
    price REAL,
    stock_quantity INTEGER,
    supplier TEXT
);

INSERT INTO products VALUES
(1, 'Laptop Pro', 'Electronics', 1299.99, 45, 'TechCorp'),
(2, 'Wireless Mouse', 'Electronics', 29.99, 150, 'TechCorp'),
(3, 'Office Chair', 'Furniture', 249.99, 30, 'OfficePlus'),
(4, 'Standing Desk', 'Furniture', 599.99, 15, 'OfficePlus'),
(5, 'Monitor 27"', 'Electronics', 349.99, 60, 'TechCorp'),
(6, 'Keyboard', 'Electronics', 79.99, 100, 'TechCorp'),
(7, 'Desk Lamp', 'Furniture', 45.99, 75, 'HomeGoods'),
(8, 'Webcam HD', 'Electronics', 89.99, 80, 'TechCorp'),
(9, 'Notebook Pack', 'Office Supplies', 12.99, 200, 'OfficeMax'),
(10, 'Pen Set', 'Office Supplies', 8.99, 300, 'OfficeMax');

-- ===========================================
-- ORDERS TABLE
-- ===========================================
DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY,
    customer_name TEXT NOT NULL,
    order_date TEXT,
    total_amount REAL,
    status TEXT,
    employee_id INTEGER
);

INSERT INTO orders VALUES
(1, 'Acme Corp', '2024-12-01', 2599.98, 'Delivered', 3),
(2, 'GlobalTech', '2024-12-05', 899.97, 'Shipped', 5),
(3, 'StartupXYZ', '2024-12-10', 1549.98, 'Processing', 3),
(4, 'BigRetail', '2024-12-15', 3299.95, 'Delivered', 8),
(5, 'LocalShop', '2024-12-18', 459.98, 'Shipped', 5),
(6, 'Acme Corp', '2024-12-20', 1899.97, 'Processing', 3),
(7, 'TechStart', '2024-12-22', 629.98, 'Pending', 8),
(8, 'GlobalTech', '2024-12-28', 2149.96, 'Pending', 5),
(9, 'MegaCorp', '2024-12-30', 5499.93, 'Processing', 3),
(10, 'SmallBiz', '2025-01-02', 179.98, 'Pending', 8);

-- ===========================================
-- VERIFY TABLES CREATED
-- ===========================================
SELECT 'employees' AS table_name, COUNT(*) AS row_count FROM employees
UNION ALL
SELECT 'products', COUNT(*) FROM products
UNION ALL
SELECT 'orders', COUNT(*) FROM orders;

-- SQL Learning - Day 1
-- Matthew Shores
-- December 9, 2025

-- ===========================================
-- SETUP: Drop and recreate table
-- ===========================================

-- Remove old table if it exists
DROP TABLE IF EXISTS employees;

.mode column
.headers on

-- Create fresh employees table
CREATE TABLE employees (
    id INTEGER,
    name TEXT,
    department TEXT,
    salary INTEGER,
    hire_date TEXT
);

-- ===========================================
-- INSERT DATA
-- ===========================================

INSERT INTO employees VALUES (1, 'Matthew Shores', 'Automation', 75000, '2025-12-09');
INSERT INTO employees VALUES (2, 'John Smith', 'IT', 68000, '2024-03-15');
INSERT INTO employees VALUES (3, 'Sarah Johnson', 'HR', 65000, '2023-07-20');
INSERT INTO employees VALUES (4, 'Mike Wilson', 'IT', 72000, '2024-01-10');
INSERT INTO employees VALUES (5, 'Lisa Brown', 'Sales', 70000, '2023-11-05');

-- ===========================================
-- PRACTICE QUERIES
-- ===========================================

-- Query 1: Select everything
SELECT * FROM employees;

-- Query 2: Select only names and departments
SELECT name, department FROM employees;

-- Query 3: Select only IT department
SELECT * FROM employees WHERE department = 'IT';

-- Query 4: Select employees earning over 70000
SELECT name, salary FROM employees WHERE salary > 70000;

-- Query 5: Select employees hired in 2024
SELECT name, hire_date FROM employees WHERE hire_date LIKE '2024%';
-- Day 1: SELECT and WHERE Practice
-- Matthew Shores
-- December 9, 2025

-- ===========================================
-- EMPLOYEES TABLE (from earlier)
-- ===========================================
DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
    id INTEGER,
    name TEXT,
    department TEXT,
    salary INTEGER,
    hire_date TEXT
);

INSERT INTO employees VALUES 
(1, 'Matthew Shores', 'Automation', 75000, '2025-12-09'),
(2, 'John Smith', 'IT', 68000, '2024-03-15'),
(3, 'Sarah Johnson', 'HR', 65000, '2023-07-20'),
(4, 'Mike Wilson', 'IT', 72000, '2024-01-10'),
(5, 'Lisa Brown', 'Sales', 70000, '2023-11-05');

-- Practice queries...
SELECT * FROM employees;
-- etc...

-- ===========================================
-- TRIM PRACTICE (from check-in question)
-- ===========================================
DROP TABLE IF EXISTS test_trim;
CREATE TABLE test_trim (
    id INTEGER,
    name TEXT
);

INSERT INTO test_trim VALUES 
(1, 'Alice'),
(2, '  Bob  '),
(3, '   '),
(4, NULL),
(5, '');

-- See how TRIM works
SELECT id, 
       name as original,
       TRIM(name) as trimmed,
       LENGTH(name) as orig_length,
       LENGTH(TRIM(name)) as trim_length
FROM test_trim;

-- Find "empty" values
SELECT * FROM test_trim 
WHERE name IS NULL OR TRIM(name) = '';
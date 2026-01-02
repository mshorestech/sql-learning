== == == == == == == == == == == == == == == == == == == == == = -- SQL Learning - Day 3
-- Matthew Shores
-- January 2, 2025
-- LIMIT and Aggregate Functions
-- ===========================================
-- ===========================================
-- SECTION 1: LIMIT Clause
-- ===========================================
-- Get first 5 employees
SELECT *
FROM employees
LIMIT 5;
-- Top 3 highest paid
SELECT name,
    salary
FROM employees
ORDER BY salary DESC
LIMIT 3;
-- Skip first 2, get next 3 (pagination)
SELECT *
FROM employees
LIMIT 3 OFFSET 2;
-- ===========================================
-- SECTION 2: COUNT()
-- ===========================================
-- Count all employees
SELECT COUNT(*) AS total_employees
FROM employees;
-- Count employees in IT department
SELECT COUNT(*) AS it_count
FROM employees
WHERE department = 'IT';
-- Count non-null values
SELECT COUNT(phone) AS has_phone
FROM employees;
-- ===========================================
-- SECTION 3: SUM() and AVG()
-- ===========================================
-- Total salary (payroll)
SELECT SUM(salary) AS total_payroll
FROM employees;
-- Average salary
SELECT AVG(salary) AS avg_salary
FROM employees;
-- Average salary in IT
SELECT AVG(salary) AS it_avg_salary
FROM employees
WHERE department = 'IT';
-- ===========================================
-- SECTION 4: MAX() and MIN()
-- ===========================================
-- Highest salary
SELECT MAX(salary) AS highest_salary
FROM employees;
-- Lowest salary
SELECT MIN(salary) AS lowest_salary
FROM employees;
-- Salary range
SELECT MIN(salary) AS lowest,
    MAX(salary) AS highest,
    MAX(salary) - MIN(salary) AS salary_range
FROM employees;
-- ===========================================
-- SECTION 5: Combining Aggregates
-- ===========================================
-- Complete salary statistics
SELECT COUNT(*) AS total_employees,
    SUM(salary) AS total_payroll,
    AVG(salary) AS avg_salary,
    MIN(salary) AS min_salary,
    MAX(salary) AS max_salary
FROM employees;
-- ===========================================
-- END OF DAY 3 PRACTICE
-- ===========================================
EOF echo "✅ Day 3 practice file created!"
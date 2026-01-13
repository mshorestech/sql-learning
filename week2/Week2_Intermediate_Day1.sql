-- ===========================================
-- DAY 1: COUNT Functions and Basic SELECT
-- SQL Intermediate Course - DataCamp
-- Matthew Shores
-- January 12, 2025
-- ===========================================

-- ===========================================
-- LESSON 1: COUNT Function Basics
-- ===========================================

-- Count non-NULL values in a column
SELECT COUNT(birthdate) AS count_birthdates
FROM people;

-- Counting multiple columns
SELECT COUNT(name) AS count_names,
       COUNT(birthdate) AS count_birthdates
FROM people;

-- Count ALL rows (including NULLs)
SELECT COUNT(*) AS total_records
FROM people;

-- ===========================================
-- LESSON 2: DISTINCT - Remove Duplicates
-- ===========================================

-- Get unique values only
SELECT DISTINCT language
FROM films;

-- Combine COUNT() with DISTINCT to count unique values
SELECT COUNT(DISTINCT birthdate) AS count_distinct_birthdates
FROM people;

-- ===========================================
-- LESSON 3: Order of Execution in SQL
-- ===========================================

-- How SQL processes a query:
-- 1. FROM    - Get the data source
-- 2. WHERE   - Filter rows
-- 3. SELECT  - Choose columns (aliasing happens here)
-- 4. LIMIT   - Limit results (applied last)

SELECT name
FROM people
WHERE birthdate > '2000-01-01'
LIMIT 10;

-- ===========================================
-- LESSON 4: Filtering with WHERE + COUNT
-- ===========================================

-- WHERE filters BEFORE counting
SELECT title
FROM films
WHERE release_year > 1960;

-- Comparison Operators:
-- =    Equal
-- !=   Not equal
-- <>   Not equal (alternative)
-- <    Less than
-- >    Greater than
-- <=   Less than or equal
-- >=   Greater than or equal

-- -----------------------------------------
-- GOTCHA: COUNT with Conditions
-- -----------------------------------------

-- ❌ WRONG: COUNT doesn't filter like this
-- SELECT COUNT(num_votes >= 100000) FROM reviews;

-- ✅ CORRECT: Use WHERE to filter first
SELECT COUNT(*) AS films_over_100k_votes
FROM reviews
WHERE num_votes >= 100000;

-- How SQL processes this:
-- 1. FROM reviews          - Get all rows
-- 2. WHERE num_votes >= 100000  - Filter to 100k+ only
-- 3. SELECT COUNT(*)       - Count what's left

-- ===========================================
-- SQL FORMATTING BEST PRACTICES
-- ===========================================

-- -----------------------------------------
-- 1. GENERAL FORMATTING & SYNTAX
-- -----------------------------------------

-- UPPERCASE for keywords: SELECT, FROM, WHERE, JOIN
-- lowercase for table/column names: customers, first_name
-- Indentation: Use 2 or 4 spaces (not tabs)
-- Semicolons: Always end statements with ;

-- Root keywords on new lines:
SELECT
    first_name,
    last_name,
    email
FROM customers
WHERE state = 'VA'
ORDER BY last_name;

-- -----------------------------------------
-- 2. NAMING CONVENTIONS
-- -----------------------------------------

-- Use snake_case: user_id, order_date (NOT userId, OrderDate)
-- Be descriptive: customer_id NOT just id
-- Avoid prefixes: customers NOT tbl_customers

-- -----------------------------------------
-- 3. QUERY STRUCTURE
-- -----------------------------------------

-- Always use AS for aliases:
-- SELECT COUNT(*) AS total_count    ✅ Good
-- SELECT COUNT(*) total_count       ❌ Avoid

-- Be explicit with JOINs:
-- INNER JOIN (not just JOIN)
-- LEFT JOIN
-- RIGHT JOIN

-- Avoid SELECT * in production:
-- SELECT first_name, last_name, email   ✅ Good
-- SELECT *                               ❌ Avoid

-- -----------------------------------------
-- 4. BEST PRACTICES FOR MAINTENANCE
-- -----------------------------------------

-- Comments:
-- Use -- for single-line comments
/* Use this style
   for multi-line
   comments */

-- Dates: Use ISO 8601 format (YYYY-MM-DD)
-- WHERE order_date > '2024-01-15'   ✅ Good
-- WHERE order_date > '01/15/2024'   ❌ Avoid

-- ===========================================
-- QUICK REFERENCE
-- ===========================================

-- COUNT FUNCTIONS:
-- COUNT(column)     - Counts non-NULL values
-- COUNT(*)          - Counts ALL rows
-- COUNT(DISTINCT x) - Counts unique values

-- SQL EXECUTION ORDER:
-- 1. FROM
-- 2. WHERE
-- 3. SELECT
-- 4. LIMIT

-- KEY TAKEAWAY:
-- WHERE filters FIRST, then COUNT counts what's left!

-- ===========================================
-- END OF DAY 1 - INTERMEDIATE SQL
-- ===========================================

-- ===========================================
-- SQL Learning - Day 2
-- Matthew Shores
-- December 9, 2025
-- ORDER BY and Sorting
-- ===========================================

-- ===========================================
-- SECTION 1: Basic ORDER BY
-- ===========================================

-- Create sample products table
DROP TABLE IF EXISTS products;
CREATE TABLE products (
    id INTEGER,
    name TEXT,
    category TEXT,
    price REAL,
    stock INTEGER
);

INSERT INTO products VALUES 
(1, 'Laptop', 'Electronics', 899.99, 15),
(2, 'Mouse', 'Electronics', 24.99, 50),
(3, 'Desk Chair', 'Furniture', 199.99, 8),
(4, 'Monitor', 'Electronics', 299.99, 12),
(5, 'Notebook', 'Office', 4.99, 100),
(6, 'Keyboard', 'Electronics', 79.99, 25),
(7, 'Desk Lamp', 'Furniture', 39.99, 20);

-- Query 1: Order by price (lowest to highest)
SELECT name, price 
FROM products 
ORDER BY price;

-- Query 2: Order by price (highest to lowest)
SELECT name, price 
FROM products 
ORDER BY price DESC;

-- Query 3: Order by name (alphabetical)
SELECT name, category 
FROM products 
ORDER BY name;

-- Query 4: Order by stock (lowest first - reorder needed!)
SELECT name, stock 
FROM products 
ORDER BY stock;

-- ===========================================
-- SECTION 2: Multiple Column Sorting
-- ===========================================

-- Query 5: Order by category, then price within each category
SELECT name, category, price 
FROM products 
ORDER BY category, price DESC;

-- Query 6: Electronics only, sorted by price
SELECT name, price 
FROM products 
WHERE category = 'Electronics'
ORDER BY price DESC;

-- Query 7: Low stock items (under 20), most urgent first
SELECT name, stock 
FROM products 
WHERE stock < 20
ORDER BY stock;

-- ===========================================
-- SECTION 3: Billboard Practice (Mode Analytics)
-- ===========================================

-- Query 8: T-Pain songs ordered by rank (best first)
-- SELECT * 
-- FROM tutorial.billboard_top_100_year_end
-- WHERE group_name LIKE '%T-Pain%'
-- ORDER BY year_rank;

-- Query 9: Songs from 2010, ordered by rank then artist
-- SELECT * 
-- FROM tutorial.billboard_top_100_year_end
-- WHERE year = 2010
-- ORDER BY year_rank, artist;

-- Query 10: Recent years first, then best songs
-- SELECT *
-- FROM tutorial.billboard_top_100_year_end
-- WHERE year_rank <= 10
-- ORDER BY year DESC, year_rank;

-- ===========================================
-- SECTION 4: Practice with Comments
-- ===========================================

/* 
This section practices using comments
to document SQL queries
*/

-- Query 11: High-value electronics
SELECT 
    name,           -- Product name
    price,          -- Price in USD
    stock           -- Units in stock
FROM products
WHERE category = 'Electronics'  -- Electronics only
  AND price > 50                 -- Premium items only
ORDER BY price DESC;             -- Most expensive first

-- ===========================================
-- END OF DAY 2 PRACTICE
-- ===========================================

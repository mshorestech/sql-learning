-- ===========================================
-- DAY 4: IN Operator & NOT
-- Matthew Shores
-- January 5, 2025
-- ===========================================

-- ===========================================
-- LESSON 1: Calculated Conditions in WHERE
-- ===========================================

-- Get items from order #6
-- WHERE total value (price × quantity) is over $30
SELECT *
FROM order_items
WHERE order_id = 6
  AND unit_price * quantity > 30;

-- How it works:
-- unit_price * quantity > 30
-- 8.65 × 4 = $34.60 → ✅ Included (over $30)

-- ===========================================
-- LESSON 2: IN Operator
-- ===========================================

-- IN is a shortcut for multiple OR conditions
-- Instead of: state = 'VA' OR state = 'FL' OR state = 'GA'
SELECT *
FROM customers
WHERE state IN ('VA', 'FL', 'GA');

-- RESULT: 5 customers
-- Babara (VA), Ines (VA), Ambur (FL), Thacher (FL), Levy (GA)

-- ===========================================
-- LESSON 3: NOT IN
-- ===========================================

-- NOT reverses the IN condition
-- Everyone NOT in VA, FL, or GA
SELECT *
FROM customers
WHERE NOT state IN ('VA', 'FL', 'GA');

-- Alternative syntax (same result):
SELECT *
FROM customers
WHERE state NOT IN ('VA', 'FL', 'GA');

-- RESULT: 5 customers
-- Freddi (CO), Clemmie (TX), Elka (IL), Ilene (TN), Romola (CA)

-- ===========================================
-- LESSON 4: IN with Numbers
-- ===========================================

-- IN works with numbers too!
SELECT *
FROM products
WHERE quantity_in_stock IN (49, 38, 72);

-- RESULT: 2 products
-- Pork - Bacon (49 in stock)
-- Lettuce - Romaine (38 in stock)

-- ===========================================
-- KEY TAKEAWAYS
-- ===========================================

-- 1. IN = shortcut for multiple OR conditions
-- 2. NOT IN = opposite (exclude the list)
-- 3. IN works with text AND numbers
-- 4. Cleaner than writing: x = 'a' OR x = 'b' OR x = 'c'

-- ===========================================
-- END OF DAY 4 MOSH SQL PRACTICE
-- ===========================================

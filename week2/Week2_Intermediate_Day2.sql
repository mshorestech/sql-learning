-- ===========================================
-- DAY 1: COUNT Functions and Basic SELECT
-- SQL Intermediate Course - DataCamp
-- Matthew Shores
-- January 20, 2025
-- ===========================================


-- ===========================================
-- COMPLEX FILTERING: Multiple Conditions
-- ===========================================

-- Films from 1990 or 1999, English or Spanish, gross > $2M

-- Method 1: Using OR with parentheses
SELECT title, release_year
FROM films
WHERE (release_year = 1990 OR release_year = 1999)
  AND (language = 'English' OR language = 'Spanish')
  AND gross > 2000000;

-- Method 2: Using IN (cleaner)
SELECT title, release_year
FROM films
WHERE release_year IN (1990, 1999)
  AND language IN ('English', 'Spanish')
  AND gross > 2000000;

-- Count the unique titles
SELECT DISTINCT title AS nineties_english_films_for_teens
FROM films
WHERE release_year BETWEEN 1990 AND 1999
  AND language = 'English'

  



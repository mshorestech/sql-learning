-- ===========================================
-- WEEK 2, DAY 6: Aggregates, GROUP BY, Clause Order
-- SQL Intermediate Practice
-- Matthew Shores
-- January 21, 2025
-- Sources: DataCamp, Codefinity
-- ===========================================


-- ===========================================
-- SECTION 1: COMPLEX FILTERING REVIEW
-- ===========================================

-- Films from 1990 or 1999, English or Spanish, gross > $2M

-- Method 1: Using OR with parentheses
SELECT title, release_year
FROM films
WHERE (release_year = 1990 OR release_year = 1999)
  AND (language = 'English' OR language = 'Spanish')
  AND gross > 2000000;

-- Method 2: Using IN (cleaner, preferred)
SELECT title, release_year
FROM films
WHERE release_year IN (1990, 1999)
  AND language IN ('English', 'Spanish')
  AND gross > 2000000;

-- Unique English films from the 1990s
SELECT DISTINCT title AS nineties_english_films
FROM films
WHERE release_year BETWEEN 1990 AND 1999
  AND language = 'English';


-- ===========================================
-- SECTION 2: GROUP BY WITH COUNT
-- ===========================================

-- Count stations per metro line, sorted by fewest first
-- Business use: Identify lines needing more stations
SELECT
    line_name,
    COUNT(*) AS station_count
FROM stations
GROUP BY line_name
ORDER BY station_count ASC;


-- ===========================================
-- SECTION 3: SQL CLAUSE ORDER REFERENCE
-- ===========================================

/*
SYNTAX ORDER (How You Write It)
-------------------------------
1. SELECT
2. FROM
3. WHERE
4. GROUP BY
5. ORDER BY
6. LIMIT

EXECUTION ORDER (How SQL Processes It)
--------------------------------------
1. FROM      → Identify the table
2. WHERE     → Filter rows
3. GROUP BY  → Bucket rows into groups
4. SELECT    → Calculate aggregates, apply aliases
5. ORDER BY  → Sort results
6. LIMIT     → Restrict output rows

KEY INSIGHT:
- WHERE filters BEFORE grouping (individual rows)
- HAVING filters AFTER grouping (aggregate results)
- Aliases created in SELECT are available in ORDER BY
*/


-- ===========================================
-- END OF DAY 6
-- Tomorrow: SUM, AVG, MIN, MAX + more GROUP BY
-- ===========================================
```

---

## 📁 Suggested Commit

**Filename:** `week2/day6-groupby-intro.sql`

**Commit message:**
```
Day 6: GROUP BY intro, clause order reference, complex filtering review

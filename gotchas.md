# SQL Gotchas

## Pattern Matching - Database Differences

**SQLite (my local practice):**
- Use LIKE (case-insensitive)
- ILIKE doesn't exist

**PostgreSQL (Mode Analytics):**
- LIKE = case-sensitive
- ILIKE = case-insensitive ← Use this one!

**Remember:** 
When practicing locally (SQLite), use LIKE
When using Mode Analytics (PostgreSQL), use ILIKE

## Comparison Operators - Common Mistake

**WRONG:**
```sql
WHERE year < 2001 AND > 2009
```
❌ Can't omit column name in second comparison

**CORRECT:**
```sql
WHERE year < 2001 OR year > 2009
```
✅ Must repeat column name
✅ Use OR not AND (no year can satisfy both conditions)

**Remember:** Always repeat the column name for each comparison!

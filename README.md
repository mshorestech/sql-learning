# SQL Mastery Journey

**Start Date:** January 2, 2025
**Program Length:** 12 weeks
**Target Roles:** Business Systems Analyst · Process Automation Specialist

---

## 📌 Scope & Intent

This repository documents a structured, time-boxed SQL mastery program focused on building **production-relevant SQL skills** for business systems, reporting, and automation workflows.

The emphasis is on:

- Writing **clear, readable, and maintainable SQL**
- Understanding **query execution order and filtering behavior**
- Developing queries suitable for **analytics, compliance, and automation pipelines**
- Building a strong foundation for integration with **Python and Microsoft Power Platform**

This is not a collection of isolated syntax exercises. Queries are written and reviewed with long-term maintainability and real-world usage in mind.

---

## 🎯 Weekly Progress

| Week | Focus | Status |
|------|------|--------|
| 1 | SELECT, WHERE, ORDER BY, LIMIT, DISTINCT | ✅ Complete |
| 2 | Aggregate Functions, GROUP BY, COUNT | 🔄 In Progress |
| 3 | JOINs (inner, left, multi-table) | ⏳ Pending |
| 4 | Subqueries & Advanced Filtering | ⏳ Pending |

---

## 🧠 Applied Business Use Cases Practiced

Throughout this repository, SQL queries are designed to support common business and operational scenarios, including:

- Filtering and validating records for downstream automation
- Generating summary metrics for reporting and dashboards
- Identifying missing, incomplete, or out-of-range data
- Preparing structured result sets for Python scripts or Power Automate flows
- Reinforcing patterns used in audit, compliance, and exception reporting

Even when using guided exercises, queries are written as if they were intended for reuse in real systems.

---

## 📊 Practice Metrics

- **Queries written:** 110+
- **Hours invested:** 14+
- **Days completed:** 6
- **Concepts covered:** 22+
- **Refactoring performed:** Ongoing
- **Formatting standard:** Explicit clauses, consistent aliases, readable layout

Metrics are tracked to emphasize consistency, repetition, and incremental improvement.

---

## ✅ Concepts Learned

### Week 1 — Core Querying & Filtering

**Day 1 (Jan 2)**
- SELECT, FROM
- WHERE (=, >, <, !=, AND, OR)
- LIKE with wildcards (%)
- IN, BETWEEN
- IS NULL, IS NOT NULL
- Column aliases (AS)
- Calculated columns
- UPDATE statements

**Day 2 (Jan 3)**
- ORDER BY (ASC, DESC)
- LIMIT
- OFFSET (pagination concepts)
- DISTINCT
- Multi-column sorting

**Day 3 (Jan 4)**
- AND / OR / NOT logic
- Operator precedence
- Parentheses for logical control
- NOT IN
- Complex conditional filtering

**Day 4 (Jan 5)**
- IN operator deep dive
- NOT IN edge cases
- Combining logical operators effectively

---

### Week 2 — Aggregation & Execution Flow

**Day 5 (Jan 12)**
- COUNT()
- COUNT(*) vs COUNT(column)
- COUNT(DISTINCT column)
- SQL logical execution order
  *(FROM → WHERE → SELECT → LIMIT)*
- Formatting for readability
- Filtering considerations when using aggregates

**Day 6 (Jan 21)**
- GROUP BY with COUNT
- SQL clause order (syntax vs execution)
- Complex filtering with IN and OR (review)
- Business use case: prioritizing records by group count

---

## 📚 Learning Sources

This repository incorporates exercises and concepts from:

| Resource | Purpose |
|--------|--------|
| SQLBolt | Hands-on SQL practice |
| Code with Mosh (SQL Course) | Conceptual explanations |
| DataCamp | Interactive SQL drills |
| Codefinity | Intermediate SQL concepts |
| Mode Analytics SQL Tutorial | Reference and reinforcement |

Where applicable, queries are rewritten or extended beyond the original prompt to reinforce understanding.

---

## 🗄️ Databases Used

| Database | Purpose |
|--------|--------|
| `sqlbolt.db` | SQLBolt exercises |
| `practice.db` | General practice |
| `sql_store.db` | Mosh course (store schema) |
| `sql_invoicing.db` | Mosh course (invoicing schema) |

Multiple schemas are intentionally used to practice adapting queries across datasets.

---

## 📁 Repository Structure
```text
sql-learning/
├── README.md
├── week1/
│   ├── day1-select-where.sql
│   ├── day2-orderby-limit.sql
│   ├── practice_day3.sql
│   └── practice_day4.sql
├── week2/
│   ├── day5-count-intro.sql
│   └── day6-groupby-intro.sql
├── sqlbolt.db
└── create-sqlbolt-db.sh
```

---

## 🎯 Up Next

**Day 7:** SUM, AVG, MIN, MAX + GROUP BY combinations

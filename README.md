# Expense Tracker — Oracle SQL & PL/SQL Project

An SQL/PLSQL based Expense Tracker System developed as a learning project.  
Designed for tracking expenses with categorized reports and procedure-driven data entry.

---

## Features

- ? Manage Users with secure details
- ? Categorize Expenses for each user
- ? Record Expenses linked with categories and users
- ? Pre-built PL/SQL Procedures for data insertion
- ? Ready-made SQL Reports for analysis
- ? Sample Data Scripts for Testing

---

## Project Structure

```
/sql_scripts/
    create_tables.sql        -- Table creation scripts
    sample_data.sql          -- Sample data inserts
    expense_reports.sql      -- Ready-to-run reporting queries

/plsql_procedures/
    add_user.sql             -- Procedure to insert a new user
    add_category.sql         -- Procedure to insert a new category
    add_expense.sql          -- Procedure to insert a new expense
    test_procedures.sql      -- Sample calls for all procedures

README.md
```

---

## ?? Setup Instructions

1? Clone the repository  
2? Run **`sql_scripts/create_tables.sql`** in Oracle SQL Developer  
3? Insert sample data using **`sample_data.sql`**  
4? Create procedures from **`plsql_procedures/`** scripts  
5? Test procedures using **`test_procedures.sql`**  
6? Run reports from **`sql_scripts/expense_reports.sql`**  

---

## Sample SQL Report Query

```sql
SELECT 
    u.username,
    c.category_name,
    e.amount,
    TO_CHAR(e.expense_date, 'DD-MON-YYYY') AS expense_date,
    e.description
FROM Expenses e
JOIN Users u ON e.user_id = u.user_id
JOIN Categories c ON e.category_id = c.category_id
ORDER BY e.expense_date DESC;
```

---

## Created By

**Akshay Machivale — July 2025**  
*This project is a part of personal learning & SQL/PLSQL practice.*

---

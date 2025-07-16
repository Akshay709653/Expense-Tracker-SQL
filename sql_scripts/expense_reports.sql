-- ================================================
-- Expense Reports for Expense Tracker Project
-- Created by Akshay - July 2025
-- ================================================

-- 1 List All Expenses with User and Category Names
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
------------------------------------------------------------

-- 2 Total Expenses Per User
SELECT 
    u.username,
    SUM(e.amount) AS total_expense
FROM Expenses e
JOIN Users u ON e.user_id = u.user_id
GROUP BY u.username
ORDER BY total_expense DESC;
------------------------------------------------------------

-- 3 Total Expenses Per Category for a Given User
-- Change user_id = 1 to the desired user
SELECT 
    c.category_name,
    SUM(e.amount) AS total_spent
FROM Expenses e
JOIN Categories c 
ON e.category_id = c.category_id
WHERE e.user_id = 1
GROUP BY c.category_name
ORDER BY total_spent DESC;
------------------------------------------------------------

-- 4 Monthly Expense Summary for a User
-- Change user_id = 1 to the desired user
SELECT 
    TO_CHAR(e.expense_date, 'MON-YYYY') AS month,
    SUM(e.amount) AS total_monthly_expense
FROM Expenses e
WHERE e.user_id = 1
GROUP BY TO_CHAR(e.expense_date, 'MON-YYYY')
ORDER BY month;
------------------------------------------------------------

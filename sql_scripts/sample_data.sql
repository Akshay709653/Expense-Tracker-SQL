-- =======================================
-- Sample Data Inserts for Expense Tracker
-- Created by Akshay - July 2025
-- =======================================

-- 1 Insert Users
INSERT INTO Users (username, email, password) 
VALUES ('Akshay', 'akshay@example.com', 'akshay123');

INSERT INTO Users (username, email, password) 
VALUES ('JohnDoe', 'john@example.com', 'john123');

-- 2 Insert Categories for Akshay (Assuming user_id = 1)
INSERT INTO Categories (user_id, category_name)
VALUES (1, 'Food');

INSERT INTO Categories (user_id, category_name)
VALUES (1, 'Travel');

INSERT INTO Categories (user_id, category_name)
VALUES (1, 'Rent');

-- 3 Insert Expenses for Akshay
INSERT INTO Expenses (user_id, category_id, amount, expense_date, description)
VALUES (1, 1, 250.00, TO_DATE('01-07-2025', 'DD-MM-YYYY'), 'Lunch at hotel');

INSERT INTO Expenses (user_id, category_id, amount, expense_date, description)
VALUES (1, 2, 1000.00, TO_DATE('05-07-2025', 'DD-MM-YYYY'), 'Bus ticket');

INSERT INTO Expenses (user_id, category_id, amount, expense_date, description)
VALUES (1, 3, 5000.00, TO_DATE('01-07-2025', 'DD-MM-YYYY'), 'Monthly Rent');

-- 4 Insert Categories for JohnDoe (Assuming user_id = 2)
INSERT INTO Categories (user_id, category_name)
VALUES (2, 'Groceries');

INSERT INTO Categories (user_id, category_name)
VALUES (2, 'Entertainment');

-- 5 Insert Expenses for JohnDoe
INSERT INTO Expenses (user_id, category_id, amount, expense_date, description)
VALUES (2, 4, 1200.00, TO_DATE('03-07-2025', 'DD-MM-YYYY'), 'Supermarket shopping');

INSERT INTO Expenses (user_id, category_id, amount, expense_date, description)
VALUES (2, 5, 800.00, TO_DATE('07-07-2025', 'DD-MM-YYYY'), 'Movie tickets');

-- ? Commit all changes
COMMIT;

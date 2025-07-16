-- ================================================
-- Test Procedure Calls for Expense Tracker Project
-- Created by Akshay - July 2025
-- ================================================

-- 1 Test Add User Procedure
BEGIN
   add_user('TestUser1', 'testuser1@example.com', 'pass123');
   add_user('TestUser2', 'testuser2@example.com', 'pass456');
END;
/

-- 2 Test Add Category Procedure for both users
BEGIN
   -- Categories for TestUser1 (Assuming user_id = 3)
   add_category(3, 'Groceries');
   add_category(3, 'Shopping');

   -- Categories for TestUser2 (Assuming user_id = 4)
   add_category(4, 'Travel');
   add_category(4, 'Utilities');
END;
/

-- 3 Test Add Expense Procedure for both users
BEGIN
   -- Expenses for TestUser1 (user_id = 3), category_id = 6 (Groceries), 7 (Shopping)
   add_expense(3, 6, 1200.00, TO_DATE('10-07-2025', 'DD-MM-YYYY'), 'Weekly groceries');
   add_expense(3, 7, 3000.00, TO_DATE('11-07-2025', 'DD-MM-YYYY'), 'New clothes');

   -- Expenses for TestUser2 (user_id = 4), category_id = 8 (Travel), 9 (Utilities)
   add_expense(4, 8, 2500.00, TO_DATE('12-07-2025', 'DD-MM-YYYY'), 'Bus ticket');
   add_expense(4, 9, 1500.00, TO_DATE('13-07-2025', 'DD-MM-YYYY'), 'Electricity bill');
END;
/

-- ? Verify inserted users
SELECT * FROM Users;

-- ? Verify inserted categories
SELECT * FROM Categories;

-- ? Verify inserted expenses
SELECT * FROM Expenses;

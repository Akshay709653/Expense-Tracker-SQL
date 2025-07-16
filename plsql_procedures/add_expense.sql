-- ================================================
-- Procedure to Add a New Expense to Expenses Table
-- Created by Akshay - July 2025
-- ================================================

CREATE OR REPLACE PROCEDURE add_expense(
    p_userid      IN NUMBER,
    p_categoryid  IN NUMBER,
    p_amount      IN NUMBER,
    p_expdate     IN DATE,
    p_description IN VARCHAR2
)
AS
BEGIN
    INSERT INTO Expenses (user_id, category_id, amount, expense_date, description)
    VALUES (p_userid, p_categoryid, p_amount, p_expdate, p_description);

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error while adding expense: ' || SQLERRM);
END;
/

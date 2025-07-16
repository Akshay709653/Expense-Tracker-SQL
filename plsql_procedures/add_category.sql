-- ================================================
-- Procedure to Add a New Category to Categories Table
-- Created by Akshay - July 2025
-- ================================================

CREATE OR REPLACE PROCEDURE add_category(
    p_userid      IN NUMBER,
    p_category    IN VARCHAR2
)
AS
BEGIN
    INSERT INTO Categories (user_id, category_name)
    VALUES (p_userid, p_category);

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error while adding category: ' || SQLERRM);
END;
/

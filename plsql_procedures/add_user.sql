-- ================================================
-- Procedure to Add a New User to Users Table
-- Created by Akshay - July 2025
-- ================================================

CREATE OR REPLACE PROCEDURE add_user(
    p_username IN VARCHAR2,
    p_email    IN VARCHAR2,
    p_password IN VARCHAR2
)
AS
BEGIN
    INSERT INTO Users (username, email, password)
    VALUES (p_username, p_email, p_password);

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error while adding user: ' || SQLERRM);
END;
/

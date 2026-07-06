CREATE TABLE EMPLOYEES (
    EmployeeID NUMBER PRIMARY KEY,
    EmployeeName VARCHAR2(50),
    Department VARCHAR2(30),
    Salary NUMBER(10,2)
);

INSERT INTO EMPLOYEES VALUES (1, 'Rahul', 'IT', 50000);
INSERT INTO EMPLOYEES VALUES (2, 'Priya', 'HR', 45000);
INSERT INTO EMPLOYEES VALUES (3, 'Amit', 'IT', 60000);
INSERT INTO EMPLOYEES VALUES (4, 'Sneha', 'Finance', 55000);

COMMIT;

SELECT * FROM EMPLOYEES;

CREATE OR REPLACE PROCEDURE UpdateEmployeeBonus (
    p_Department IN VARCHAR2,
    p_BonusPercent IN NUMBER
)
AS
BEGIN

    UPDATE EMPLOYEES
    SET Salary = Salary + (Salary * p_BonusPercent / 100)
    WHERE Department = p_Department;

    COMMIT;

END;
/

BEGIN
    UpdateEmployeeBonus('IT', 10);
END;
/

SELECT * FROM EMPLOYEES;
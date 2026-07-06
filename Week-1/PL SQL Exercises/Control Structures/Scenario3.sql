BEGIN

    FOR loan IN (

        SELECT c.Name,
               l.LoanID,
               l.DueDate
        FROM CUSTOMERS c
        JOIN LOANS l
        ON c.CustomerID = l.CustomerID
        WHERE l.DueDate BETWEEN SYSDATE AND SYSDATE + 30

    )
    LOOP

        DBMS_OUTPUT.PUT_LINE(
            'Reminder: Loan '
            || loan.LoanID
            || ' for '
            || loan.Name
            || ' is due on '
            || TO_CHAR(loan.DueDate, 'DD-MON-YYYY')
        );

    END LOOP;

END;
/
BEGIN

    FOR cust IN (
        SELECT CustomerID, Age
        FROM CUSTOMERS
    )
    LOOP

        IF cust.Age > 60 THEN

            UPDATE LOANS
            SET InterestRate = InterestRate - 1
            WHERE CustomerID = cust.CustomerID;

        END IF;

    END LOOP;

    COMMIT;

END;
/

SELECT * FROM LOANS;
CREATE OR REPLACE PROCEDURE TransferFunds (
    p_FromAccount IN NUMBER,
    p_ToAccount IN NUMBER,
    p_Amount IN NUMBER
)
AS
    v_Balance NUMBER;
BEGIN

    SELECT Balance
    INTO v_Balance
    FROM ACCOUNTS
    WHERE AccountID = p_FromAccount;

    IF v_Balance >= p_Amount THEN

        UPDATE ACCOUNTS
        SET Balance = Balance - p_Amount
        WHERE AccountID = p_FromAccount;

        UPDATE ACCOUNTS
        SET Balance = Balance + p_Amount
        WHERE AccountID = p_ToAccount;

        COMMIT;

        DBMS_OUTPUT.PUT_LINE('Transfer Successful');

    ELSE

        DBMS_OUTPUT.PUT_LINE('Insufficient Balance');

    END IF;

END;
/

BEGIN
    TransferFunds(101, 102, 5000);
END;
/

SELECT * FROM ACCOUNTS;
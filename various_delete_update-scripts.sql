/*INSERT INTO Accounts VALUES
(50, 'Donald Trump', 758000000.00, 0);
*/

/*INSERT INTO Accounts (Account_Holder, Balance, Fees)
  VALUES ('Eddie Money', 455896.73, 0);
*/

/*INSERT INTO Accounts (Balance, Account_Holder, Fees)
  VALUES (657654.36, 'Jake Snake', 0);
*/

DELETE
FROM Accounts
WHERE AccountID = 52;

UPDATE Accounts
	SET Account_Holder = 'Donald J. Trump'
    WHERE AccountID = 50;
    
SELECT * FROM Accounts
WHERE Balance <= 1000000;

UPDATE Accounts
	SET Fees = Fees + 50
    WHERE Balance <= 1000000;
    
SELECT * FROM Accounts
WHERE AccountID = in (50,51,52,53);

INSERT INTO Accounts VALUES
(23, 'Marcus Lutrell', 57896.25, 27.50);

    
  
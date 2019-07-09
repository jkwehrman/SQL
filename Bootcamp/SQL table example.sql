Select * from accounts
left outer join transactions on accounts.ID = transactions.account_ID;

Insert Accounts values (1, 'Anna Bengel', 8888.00, 250.00); 
Insert Accounts values (2, 'Chase Williams', 5444.00, 175.00); 
Insert Accounts values (3, 'Jonelle Wehrman', 3333.00, 88.00); 
Insert Accounts values (4, 'Steven Ross', 3322.00, 88.00);

Insert Transactions Values (1, 500.00, 'Deposit', 3);
Insert Transactions Values (2, -200.00, 'Withdrawal', 4);
Insert Transactions Values (3, 200.00, 'Deposit', 4);
Insert Transactions Values (4, 248.00, 'Deposit', 1);
--1 all users from Chicago
SELECT * FROM syntax_practice WHERE city = 'chicago';
--2 all users with usernames that contain an 'a'
SELECT * FROM syntax_practice WHERE username LIKE '%a%';
--3 update all records with acct balance of 0.00 and transactions_attempted of 0. Give them a new acct balance of 10.00
UPDATE syntax_practice SET account_balance = 10.00 WHERE (account_balance = 0) AND (transactions_attempted = 0);
--4 Select all users that have attempted 9 or more transactions.
SELECT * FROM syntax_practice WHERE transactions_attempted >= 9;
--5 Get the username and account balance of the 3 users with the highest balances, sort highest to lowest balance.
SELECT username, account_balance FROM syntax_practice
	ORDER BY account_balance DESC
	LIMIT 3;
--6 Get the username and account balance of the 3 users with the lowest balances, sort lowest to highest balance.
SELECT username, account_balance FROM syntax_practice
	ORDER BY account_balance ASC
	LIMIT 3;
--7 Get all users with account balances that are more than $100.
SELECT * FROM syntax_practice WHERE account_balance > 100;
--8 Add a new record.
INSERT INTO syntax_practice ("username", "city", "transactions_completed", "transactions_attempted", "account_balance")
VALUES ('newperson', 'los angeles', '8', '399', '5400.34');
--9 Delete users that reside in miami OR phoenix and have completed fewer than 5 transactions.
DELETE FROM syntax_practice WHERE city = 'miami' OR city = 'phoenix' AND transactions_completed < 5;

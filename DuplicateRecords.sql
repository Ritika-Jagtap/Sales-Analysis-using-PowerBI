-- Found duplicate records; Checking currency duplication

SELECT distinct(sales.transactions.currency) from sales.transactions;

SELECT count(*) FROM sales.transactions WHERE sales.transactions.currency='INR';

SELECT count(*) FROM sales.transactions WHERE sales.transactions.currency='INR\r';

SELECT count(*) FROM sales.transactions WHERE sales.transactions.currency='USD';
 
SELECT count(*) FROM sales.transactions WHERE sales.transactions.currency='USD\r';

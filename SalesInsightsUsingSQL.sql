-- 1. Show all transactions
SELECT * FROM sales.transactions;

-- 2. show total records in transaction table
SELECT count(*) FROM sales.transactions;

-- 3. show no. of records in customer table
SELECT count(*) FROM sales.customers;

-- 4. Print first five records of transaction table
SELECT * FROM sales.transactions limit 5;

-- 5. Give me all the records with Market code 001
SELECT * FROM sales.transactions WHERE market_code="Mark001";

-- 6. How many transactions were performed in Chennai
SELECT count(*) FROM sales.transactions WHERE market_code="Mark001";

-- 7. Show all transactions made in USD
SELECT * FROM sales.transactions WHERE currency="USD";

-- 8. Show all transactions made in 2020 along with its date
SELECT sales.transactions.*, sales.date.* FROM sales.transactions
INNER JOIN sales.date ON sales.transactions.order_date= sales.date.date
WHERE sales.date.year=2020;

-- 9. What is the total revenue in the year 2020
SELECT SUM(sales.transactions.sales_amount) FROM sales.transactions
INNER JOIN sales.date ON sales.transactions.order_date= sales.date.date
WHERE sales.date.year=2020;

-- 10. What is the total revenue earned in Chennai in the year 2020
SELECT SUM(sales.transactions.sales_amount) FROM sales.transactions
INNER JOIN sales.date ON sales.transactions.order_date= sales.date.date
WHERE sales.date.year=2020 and sales.transactions.market_code="Mark001";

-- 11. List the products that were sold in Mumbai so far
SELECT product_code FROM sales.transactions
INNER JOIN sales.markets ON sales.transactions.market_code= sales.markets.markets_code
WHERE sales.markets.markets_name= "Mumbai";

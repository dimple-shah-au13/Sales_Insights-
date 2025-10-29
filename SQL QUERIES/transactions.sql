use sales;
SELECT * FROM sales.transactions;

SELECT * FROM sales.transactions limit 5;

SELECT count(*) FROM sales.transactions;

SELECT * FROM sales.transactions where market_code='Mark001';

SELECT count(*) FROM sales.transactions where market_code='Mark001';

SELECT * from sales.transactions where currency="USD";

Select sales.transactions.*, sales.date.* from transactions
INNER JOIN date ON transactions.order_date = date.date;

Select sales.transactions.*, sales.date.* from transactions
INNER JOIN date ON transactions.order_date = date.date
WHERE date.year = 2020;

 SELECT SUM(transactions.sales_amount) FROM transactions 
 INNER JOIN date ON transactions.order_date=date.date 
 where date.year=2020 AND transactions.market_code = 'Mark001';
 
SELECT SUM(transactions.sales_amount) FROM transactions 
 INNER JOIN date ON transactions.order_date=date.date 
 where date.year=2020;

SELECT SUM(transactions.sales_amount) FROM transactions 
INNER JOIN date ON transactions.order_date=date.date 
WHERE date.year=2020 and transactions.currency="INR\r" or transactions.currency= "USD\r";


SELECT SUM(transactions.sales_amount) FROM transactions 
INNER JOIN date ON transactions.order_date=date.date 
WHERE date.year=2020 and date.month_name = "January"
and transactions.currency="INR\r" or transactions.currency= "USD\r";

SELECT SUM(transactions.sales_amount) FROM transactions 
INNER JOIN date ON transactions.order_date=date.date 
WHERE date.year=2020 and transactions.market_code = 'Mark001'
and transactions.currency="INR\r" or transactions.currency= "USD\r";


SELECT * FROM sales.transactions WHERE sales_amount = -1;
SELECT * FROM sales.transactions WHERE sales_amount <= 0;



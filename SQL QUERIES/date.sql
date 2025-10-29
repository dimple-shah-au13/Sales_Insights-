use sales;

SELECT * FROM date;
SELECT distinct year FROM date;

🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩

SELECT distinct currency FROM transactions;
-- 'INR'
-- 'INR\r'
-- 'USD'
-- 'USD\r'

🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩

SELECT count(*) FROM transactions where currency = 'INR\r';
SELECT count(*) FROM transactions where currency = 'INR';
SELECT count(*) FROM transactions where currency = 'USD\r';
SELECT count(*) FROM transactions where currency = 'USD';

SELECT * FROM transactions where currency = 'USD\r' OR currency = 'USD' ;

🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩

 SELECT SUM(transactions.sales_amount) FROM transactions 
 INNER JOIN date ON transactions.order_date=date.date 
 where date.year=2020 and currency= "INR\r" OR currency = 'USD\r';

🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩

SELECT SUM(transactions.sales_amount) FROM transactions 
INNER JOIN date ON transactions.order_date=date.date
where date.year=2020 and date.month_name="January" and (transactions.currency="INR\r" or transactions.currency='USD\r');

🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩

SELECT SUM(transactions.sales_amount) FROM transactions 
INNER JOIN date ON transactions.order_date=date.date 
where date.year=2020
and transactions.market_code="Mark001";
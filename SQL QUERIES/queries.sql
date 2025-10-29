-- Data cleaning ---- Data wrangling OR Data mungling (fancy terms for Data cleaning)

In MySQL -> Go to server header -> select Data Import -> select Import from self contained file option -> browse on local machine file location
click on start import -> ok 

🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩

SELECT * FROM sales.customers;

-- Want to see how many total records are there in transactions ?

SELECT count(*) FROM sales.transactions;


🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩

-- Want to see how many total records are there in customers table ?

SELECT count(*) FROM sales.customers;

🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩

use sales;
SELECT * FROM sales.transactions;

-- To print only first 5 records from transactions ===
SELECT * FROM sales.transactions limit 5;

🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡

-- To get all records from transactions where market_code = Mark001  OR chennai (chennai code is Mark001 which u get from markets table) =====
SELECT * FROM sales.transactions where market_code='Mark001';

-- To count  all records from transactions where market_code = Mark001 OR chennai   =====
SELECT count(*) FROM sales.transactions where market_code='Mark001';

🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡

-- To check  all records from transactions where currency = USD    =====
SELECT * from sales.transactions where currency="USD";

🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡

-- I want to show transactions of 2020 joined by Date Table ?

-- First check both tables transactions and date by joining them to see full data =====

Select sales.transactions.*, sales.date.* from transactions
INNER JOIN date ON transactions.order_date = date.date;

--     Then to see sales only for year 2020 =======
Select sales.transactions.*, sales.date.* from transactions
INNER JOIN date ON transactions.order_date = date.date
WHERE date.year = 2020;

🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡

-- I want to know the total revenue or total sales in 2020 ??

 SELECT SUM(transactions.sales_amount) FROM transactions 
 INNER JOIN date ON transactions.order_date=date.date 
 where date.year=2020;

-- I want to know the total revenue or total sales in 2020  for Chennai ??

 SELECT SUM(transactions.sales_amount) FROM transactions 
 INNER JOIN date ON transactions.order_date=date.date 
 where date.year=2020 AND transactions.market_code = 'Mark001';


🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡

-- To see distinct product list of products sold in Chennai ?

SELECT distinct product_code FROM transactions where market_code='Mark001';


🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡

-- To check  all records from transactions where sales_amount = -1    =====

SELECT * FROM sales.transactions WHERE sales_amount = -1;

--  To check  all records from transactions where sales_amount <= 0    =====

SELECT * FROM sales.transactions WHERE sales_amount <= 0;


🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡


SELECT distinct currency FROM transactions;
-- 'INR'
-- 'INR\r'



SELECT count(*) FROM transactions where currency = 'INR\r';
-- 150000
SELECT count(*) FROM transactions where currency = 'INR';
-- 279
SELECT count(*) FROM transactions where currency = 'USD\r';
-- 2
SELECT count(*) FROM transactions where currency = 'USD';
-- 2


SELECT * FROM transactions where currency = 'USD\r' OR currency = 'USD' ;

-- Prod003	Cus005	Mark004	2017-11-20	59	500	USD
-- Prod003	Cus005	Mark004	2017-11-22	36	250	USD
-- Prod003	Cus005	Mark004	2017-11-20	59	500	USD
-- Prod003	Cus005	Mark004	2017-11-22	36	250	USD

🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡

--  I want to track Revenue numbers by Year =============

SELECT SUM(transactions.sales_amount) FROM transactions 
INNER JOIN date ON transactions.order_date=date.date 
WHERE date.year=2020 and transactions.currency="INR\r" or transactions.currency= "USD\r";


🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡
🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡
🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡
🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡
🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡🟡



🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩


SELECT * FROM sales.markets;

// I want to see only transactions from chennai in markets ?





🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩


use sales;
SELECT * FROM date;



🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩
🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩
🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩

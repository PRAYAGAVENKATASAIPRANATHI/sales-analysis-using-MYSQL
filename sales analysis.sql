CREATE DATABASE COMPANY;
use COMPANY;
select * from sales;
-- Q1 :find all orders shipped via 'economy' mode with a total amount greater than 25,000.--
SELECT * from sales
WHERE Ship_Mode = 'Economy' AND Total_Amount > 25000;
 -- */Q2 Retreive all sales  data for 'Technology' category in 'Ireland' mode after 2020-01-01.--
 select * from sales
 where category='Technology' AND country='Ireland' AND Order_Date>'2020-01-01';
-- /*Q3 List the top 10 most profitable sales transactions in descending order. --
SELECT * from sales
ORDER BY Unit_Profit DESC
LIMIT 10;           -- top 10m transactions

SELECT * from sales
ORDER BY Unit_Profit DESC
LIMIT 10,20;  -- skip 10 recodrs,showing next 20 records
-- */ Q4 Find all customers whose name starts with 'J' and ends with 'n'.
SELECT Order_ID,customer_name FROM sales
WHERE Customer_name LIKE 'J%N';
-- */Q5 Retreive all product names that contain 'Acco' anywhere in the name --
SELECT Order_ID, Product_Name from sales
WHERE Product_Name LIKE '%Acco%';
-- */ Q6 Get the top 5 cities with the highest total sales amount. --
SELECT City,sum(Total_amount) as total from sales
group by City
order by total  desc limit 5; 
-- */ Q7 Display the second set of 10 records for customer_name
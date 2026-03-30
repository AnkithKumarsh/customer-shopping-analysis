CREATE DATABASE customer_analysis;
USE customer_analysis;

CREATE TABLE customers (
    Customer_ID INT,
    Age INT,
    Gender VARCHAR(10),
    Category VARCHAR(50),
    Purchase_Amount FLOAT,
    Payment_Method VARCHAR(50),
    Age_Group VARCHAR(20)
);


SELECT * FROM customers LIMIT 10;

SELECT SUM(Purchase_Amount) AS Total_Revenue 
FROM customers;

SELECT Gender, AVG(Purchase_Amount) AS Avg_Spending
FROM customers
GROUP BY Gender;

SELECT Category, SUM(Purchase_Amount) AS Total_Sales
FROM customers
GROUP BY Category
ORDER BY Total_Sales DESC;

SELECT Age_Group, SUM(Purchase_Amount) AS Total_Sales
FROM customers
GROUP BY Age_Group
ORDER BY Total_Sales DESC;

SELECT Payment_Method, COUNT(*) AS Usage_Count
FROM customers
GROUP BY Payment_Method
ORDER BY Usage_Count DESC;
create Database KMS_Project_DB
USE KMS_Project_DB

SELECT * FROM [dbo].[KMS Sql Case Study]

SELECT * FROM [dbo].[Order_Status]
SELECT TOP (1000) [Row_ID]
      ,[Order_ID]
      ,[Order_Date2]
      ,[Order_Priority]
      ,[Order_Quantity]
      ,[Sales]
      ,[Discount]
      ,[Ship_Mode]
      ,[Profit]
      ,[Unit_Price]
      ,[Shipping_Cost]
      ,[Customer_Name]
      ,[Province]
      ,[Region]
      ,[Customer_Segment]
      ,[Product_Category]
      ,[Product_Sub_Category]
      ,[Product_Name]
      ,[Product_Container]
      ,[Product_Base_Margin]
      ,[Ship_Date]
  FROM [KMS_Project_DB].[dbo].[kms Sql case study]

SELECT * FROM [dbo].[kms Sql case study]

  --Q1--Which product category had the highest sales?
SELECT Product_Category, Sales 
from [dbo].[KMS Sql Case Study] 
where Sales=(Select Max(Sales)
from [dbo].[KMS Sql Case Study])

--Q2--What are the Top 3 and Bottom 3 regions in terms of sales?
SELECT DISTINCT REGION FROM [dbo].[KMS Sql Case Study]
SELECT TOP 3 REGION,SUM(Sales) AS TOTALSales from [dbo].[KMS Sql Case Study]
GROUP BY REGION
ORDER BY TOTALSales DESC
SELECT TOP 3 REGION,SUM(Sales) AS TOTALSales from [dbo].[KMS Sql Case Study]
GROUP BY REGION
ORDER BY TOTALSales ASC

--Q3-- What were the total sales of appliances in Ontario?
SELECT SUM(Sales) AS TOTALSales from [dbo].[KMS Sql Case Study] 
where Region='Ontario'

--Q4-- Advise the management of KMS on what to do 
---to increase the revenue from the bottom 10 customers
SELECT TOP 10 * FROM [dbo].[KMS Sql Case Study] 
ORDER BY Profit DESC
SELECT TOP 10 * FROM [dbo].[KMS Sql Case Study] 
ORDER BY Profit ASC


--Q5-- KMS incurred the most shipping cost using which shipping method?
SELECT Shipping_Cost, Ship_Mode FROM [dbo].[KMS Sql Case Study] 
WHERE Shipping_Cost = (SELECT MAX(Shipping_Cost) AS MAXShipping_Cost 
FROM [dbo].[KMS Sql Case Study])

--Q6-- Who are the most valuable customers, 
---and what products or services do they typically purchase?
SELECT TOP 5 Profit, Sales, Product_Name, Customer_Name 
FROM [dbo].[KMS Sql Case Study]
ORDER BY Profit DESC

--Q7--Which small business customer had the highest sales?
SELECT TOP 1 Customer_Name, SUM(Sales) AS TOTAL_Sales 
FROM [dbo].[KMS Sql Case Study] 
WHERE Customer_Segment='Small Business' 
GROUP BY Customer_Name
ORDER BY Total_Sales DESC

--Q8-- Which Corporate Customer placed the most number of orders 
---in 2009 – 2012?
SELECT * from [dbo].[KMS Sql Case Study]
SELECT Top 1 Customer_Name, COUNT(Order_ID) AS Order_Count
FROM [dbo].[KMS Sql Case Study]
WHERE Customer_Segment='Corporate'
GROUP BY Customer_Name
ORDER BY Order_Count DESC

--Q9-- Which consumer was the most profitable one?
SELECT Top 1 Customer_Name, SUM(Profit) AS Total_Profit
FROM [dbo].[KMS Sql Case Study]
WHERE Customer_Segment = 'Consumer'
GROUP BY Customer_Name
ORDER BY Total_Profit DESC

---10--- Which customer returned items, and what segments do they belong to?
select Customer_Name,Customer_Segment
From [dbo].[KMS Sql Case Study]
join [dbo].[Order_Status]
on [dbo].[KMS Sql Case Study].Order_ID = [dbo].[Order_Status].[Order_ID]

SELECT * FROM [dbo].[KMS Sql Case Study]

SELECT * FROM [dbo].[Order_Status]

---11--- If the delivery truck is the most economical but the lowest shipping method and express air is the fastest.
but the most expensive one, did you think the company appropriately spent shipping costs based on the order priority?
SELECT
    Order_Priority,
    Ship_Mode,
    COUNT(Order_ID) AS Order_Count,
    SUM(Sales - Profit) AS Estimated_Shipping_Cost,
    AVG(DATEDIFF(DAY, TRY_CAST(Order_Date2 AS DATE), TRY_CAST(Ship_Date AS DATE))) AS Avg_Shipping_Duration
FROM [dbo].[kms Sql case study]
GROUP BY Order_Priority, Ship_Mode
ORDER BY Order_Priority, Ship_Mode

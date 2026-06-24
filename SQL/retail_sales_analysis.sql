show databases;

/*
=====================================
RETAIL SALES ANALYSIS PROJECT
JANUARY - APRIL 2025
=====================================
*/
/*
=====================================
CREATION OF DATA BASE
=====================================
*/
Create Database retail_analysis;
Use retail_analysis;
/*
=====================================
CREATION OF TABLES FROM JANUARY TO APRIL FOR FIRST FOUR MONTHS
=====================================
*/
CREATE TABLE retailsalesanalysis(
  Order_ID INT PRIMARY KEY,
  Order_Date DATE,
  Product VARCHAR(50),
  Category VARCHAR(50),
  Quantity INT,
  Unit_Price DECIMAL(10,2),
  City VARCHAR(50),
  Revenue decimal(12,2)
);

use retail_analysis;
show databases;
/*
=====================================
RENAME TABLE TO LOOK MORE PRESENTABLE (OPTIONAL)
=====================================
*/
/*========================================================================================*/
Rename Table retailsalesanalysis To retailsalesanalysisJan;

/*========================================================================================*/
CREATE TABLE retailsalesanalysisFeb (
  Order_ID INT PRIMARY KEY,
  Order_Date DATE,
  Product VARCHAR(50),
  Category VARCHAR(50),
  Quantity INT,
  Unit_Price DECIMAL(10,2),
  City VARCHAR(50),
  Revenue decimal(12,2)
);
Select * from retailsalesanalysisFEB;
Select Distinct Product, Category, Unit_price from retailsalesanalysisFEB;
/*=================================*/
CREATE TABLE retailsalesanalysisMar (
  Order_ID INT PRIMARY KEY,
  Order_Date DATE,
  Product VARCHAR(50),
  Category VARCHAR(50),
  Quantity INT,
  Unit_Price DECIMAL(10,2),
  City VARCHAR(50),
  Revenue decimal(12,2)
);
/*========================================================================================*/
Select * from retailsalesanalysisMar;
/*========================================================================================*/
INSERT INTO retailsalesanalysisMar
(order_id, order_date, product, category, quantity, unit_price, city)
VALUES
(1056,'2025-03-01','Laptop','Electronics',1,55000,'Delhi'),
(1057,'2025-03-02','Mouse','Electronics',7,800,'Kolkata'),
(1058,'2025-03-03','Monitor','Electronics',2,18000,'Mumbai'),
(1059,'2025-03-04','Desk','Furniture',1,12000,'Bangalore'),
(1060,'2025-03-05','Keyboard','Electronics',4,1500,'Delhi'),
(1061,'2025-03-06','Office Chair','Furniture',2,7500,'Kolkata'),
(1062,'2025-03-07','Bookshelf','Furniture',1,6000,'Mumbai'),
(1063,'2025-03-08','Laptop','Electronics',2,55000,'Bangalore'),
(1064,'2025-03-09','Mouse','Electronics',5,800,'Delhi'),
(1065,'2025-03-10','Monitor','Electronics',1,18000,'Kolkata'),
(1066,'2025-03-11','Desk','Furniture',2,12000,'Mumbai'),
(1067,'2025-03-12','Keyboard','Electronics',3,1500,'Bangalore'),
(1068,'2025-03-13','Laptop','Electronics',1,55000,'Kolkata'),
(1069,'2025-03-14','Office Chair','Furniture',1,7500,'Delhi'),
(1070,'2025-03-15','Bookshelf','Furniture',2,6000,'Bangalore'),
(1071,'2025-03-16','Mouse','Electronics',6,800,'Mumbai'),
(1072,'2025-03-17','Monitor','Electronics',3,18000,'Delhi'),
(1073,'2025-03-18','Keyboard','Electronics',5,1500,'Kolkata'),
(1074,'2025-03-19','Laptop','Electronics',2,55000,'Mumbai'),
(1075,'2025-03-20','Desk','Furniture',1,12000,'Bangalore');
/*========================================================================================*/
Select Distinct Product, Category, Unit_price from retailsalesanalysisMar;
/*========================================================================================*/
  ALTER TABLE retailsalesanalysisFEB
CHANGE `ï»¿Order_ID` Order_ID INT;

/*
=============================================
QUERRY1: UPDATE AMOUNTS IN COLUMN REVENUE
SOLUTION->===================================
*/
UPDATE retailsalesanalysisMar
SET Revenue = Quantity * Unit_Price
WHERE Revenue IS NULL;
/*========================================================================================*/
SET SQL_SAFE_UPDATES = 0;
SET SQL_SAFE_UPDATES = 1;
/*========================================================================================*/
CREATE TABLE retailsalesanalysisApr (
  Order_ID INT PRIMARY KEY,
  Order_Date DATE,
  Product VARCHAR(50),
  Category VARCHAR(50),
  Quantity INT,
  Unit_Price DECIMAL(10,2),
  City VARCHAR(50),
  Revenue decimal(12,2)
);
/*========================================================================================*/
Select * from retailsalesanalysisApr;
/*========================================================================================*/
INSERT INTO RetailsalesanalysisApr
(order_id, order_date, product, category, quantity, unit_price, city)
VALUES
(1076,'2025-04-01','Laptop','Electronics',1,55000,'Kolkata'),
(1077,'2025-04-02','Monitor','Electronics',2,18000,'Delhi'),
(1078,'2025-04-03','Mouse','Electronics',8,800,'Mumbai'),
(1079,'2025-04-04','Desk','Furniture',1,12000,'Bangalore'),
(1080,'2025-04-05','Keyboard','Electronics',4,1500,'Kolkata'),
(1081,'2025-04-06','Office Chair','Furniture',2,7500,'Delhi'),
(1082,'2025-04-07','Bookshelf','Furniture',1,6000,'Mumbai'),
(1083,'2025-04-08','Laptop','Electronics',2,55000,'Bangalore'),
(1084,'2025-04-09','Monitor','Electronics',1,18000,'Kolkata'),
(1085,'2025-04-10','Mouse','Electronics',6,800,'Delhi'),
(1086,'2025-04-11','Desk','Furniture',2,12000,'Mumbai'),
(1087,'2025-04-12','Keyboard','Electronics',5,1500,'Bangalore'),
(1088,'2025-04-13','Laptop','Electronics',1,55000,'Delhi'),
(1089,'2025-04-14','Office Chair','Furniture',1,7500,'Kolkata'),
(1090,'2025-04-15','Bookshelf','Furniture',2,6000,'Bangalore'),
(1091,'2025-04-16','Mouse','Electronics',7,800,'Mumbai'),
(1092,'2025-04-17','Monitor','Electronics',3,18000,'Delhi'),
(1093,'2025-04-18','Keyboard','Electronics',3,1500,'Kolkata'),
(1094,'2025-04-19','Laptop','Electronics',2,55000,'Mumbai'),
(1095,'2025-04-20','Desk','Furniture',1,12000,'Bangalore');

Update retailsalesanalysisApr SET Revenue= Quantity*Unit_Price 
WHERE order_id > 0;
/*========================================================================================*/
Select * from retailsalesanalysisApr;
/*========================================================================================*/
Select Distinct Product, Category, Unit_price from retailsalesanalysisApr;
use retail_analysis;
/*
=======================================================
DIFFERENT QUERIES RELATED TO REGULAR BUSINESS FUNCTIONS
=======================================================
*/
/*
=======================================================
Retriving rows in sales of month February
=======================================================
*/
Select *from retailsalesanalysisFEB where `ï»¿Order_ID` >=1035 and `ï»¿Order_ID`<=1038;
Select *from retailsalesanalysisFEB where `ï»¿Order_ID` BETWEEN 1034 and 1039;
use retail_analysis;
/*===============================================================
Query performed TO USE ONLY DISTINCT AND COUNT FUNCTIONS:
DISTINCT STATEMENT PROVIDE UNIQUE VALUES WHEREAS
COUNT STATEMENT COUNTS THE NUMBER OF DISTINCT VALUES
===================================================================*/

SELECT count(DISTINCT Category,Product,Unit_Price) FROM retailsalesanalysisApr;
/* OR*/
SELECT count(DISTINCT Category,Product,Unit_Price) AS DistinctCategory FROM retailsalesanalysisApr;
/*========================================================================================*/
/*=====================================
USING OF ORDER BY CLAUSE:
The ORDER BY keyword is used to sort the result-set in ascending or descending order
THIS FUNCTION CAN BE USED IN NORMAL BUSINESS FUNCTION WHERE ONE INDIVIDUAL OR A FIRM NEEDS TO 
ORGANISE THERE DATASET OR DATABASE AS PER THEIR REQUIREMENT.
===================================================*/

SELECT * FROM   retailsalesanalysisJan
ORDER BY Revenue;
/*====================================
this will help the business firrm to generate there most revenue generated products to their least generated revenue products////////
next query will be performed in order to combine our sales analysis for Quarter1 
Using UNION ALL
====================================================*/
SELECT * FROM   retailsalesanalysisJan
UNION ALL 
SELECT * FROM   retailsalesanalysisFEB
UNION ALL 
SELECT * FROM   retailsalesanalysisMar
ORDER BY Revenue;
/*=============================================== 
 extra queries can also be performed in order to reduce columns using select statement
==================================================*/
ALTER TABLE retailsalesanalysisApr
CHANGE `ï»¿Order_ID` Order_ID INT;
/*======================
This usually happens because of a BOM (Byte Order Mark) issue while importing a CSV.
=======================*/
ALTER TABLE retailsalesanalysisJan
CHANGE `ï»¿Order_ID` Order_ID INT;
/*--------------------
Business Objective:
Analyze sales performance across products, categories, and cities to identify revenue drivers and business opportunities.

======================================*/
Select * from retailsalesanalysisJan;
SHOW COLUMNS FROM retailsalesanalysisFEB;

SELECT MONTH(Order_Date) AS Month,
SUM(Revenue) AS TotalRevenue
FROM retailsalesanalysisJan
GROUP BY MONTH(Order_Date);

SELECT MONTH(Order_Date) AS Month,
SUM(Revenue) AS TotalRevenue
FROM retailsalesanalysisFEB
GROUP BY MONTH(Order_Date);

SELECT MONTH(Order_Date) AS Month,
SUM(Revenue) AS TotalRevenue
FROM retailsalesanalysisMar
GROUP BY MONTH(Order_Date);

SELECT MONTH(Order_Date) AS Month,
SUM(Revenue) AS TotalRevenue
FROM retailsalesanalysisApr
GROUP BY MONTH(Order_Date);

SELECT 'January' AS Month, SUM(Revenue) AS Revenue
FROM retailsalesanalysisJan
UNION ALL
SELECT 'February', SUM(Revenue)
FROM retailsalesanalysisFeb
UNION ALL
SELECT 'March', SUM(Revenue)
FROM retailsalesanalysisMar
UNION ALL
SELECT 'April', SUM(Revenue)
FROM retailsalesanalysisApr;
/*=====================
Top Selling Products (April)*/

SELECT Product,
SUM(Quantity) AS TotalSold
FROM retailsalesanalysisApr
GROUP BY Product
ORDER BY TotalSold DESC;
/*===============Revenue By Category=============*/
SELECT Category,
SUM(Revenue) AS TotalRevenue
FROM retailsalesanalysisApr
GROUP BY Category
ORDER BY TotalRevenue DESC;
/*===========Revenue by City============*/
Select City,
SUM(Revenue) AS TotalRevenue
From retailsalesAnalysisApr
Group by City
order by TotalRevenue DESC;

/*============AverageOrderValue=========*/
Select Avg(Revenue) As AverageOrderValue
FROM retailsalesanalysisApr;

/*=================Highest Revenue Order =================*/
Select * from retailsalesanalysisApr
ORDER BY Revenue desc limit 1;

Select * from retailsalesanalysisApr
ORDER BY Revenue asc limit 0;

/*===============================
Quarterly Sales Analysis (Jan–Mar)
================================*/
SELECT Category,
SUM(Revenue) AS QuarterlyRevenue
FROM (
    SELECT Category, Revenue FROM retailsalesanalysisJan
    UNION ALL
    SELECT Category, Revenue FROM retailsalesanalysisFeb
    UNION ALL
    SELECT Category, Revenue FROM retailsalesanalysisMar
) AS Q1Sales
GROUP BY Category
ORDER BY QuarterlyRevenue DESC;

/*=================================================
Stage 1: Data Understanding
Q1. How many total orders were placed? (Show Business Transaction Volume)
====================*/
SELECT COUNT(*) AS TotalOrders
FROM (
    SELECT * FROM retailsalesanalysisJan
    UNION ALL
    SELECT * FROM retailsalesanalysisFeb
    UNION ALL
    SELECT * FROM retailsalesanalysisMar
    UNION ALL
    SELECT * FROM retailsalesanalysisApr
) SalesData;
/*=================REVENUE ANALYSIS ==================*/
SELECT SUM(Revenue) AS TotalRevenue
FROM (
    SELECT Revenue FROM retailsalesanalysisJan
    UNION ALL
    SELECT Revenue FROM retailsalesanalysisFeb
    UNION ALL
    SELECT Revenue FROM retailsalesanalysisMar
    UNION ALL
    SELECT Revenue FROM retailsalesanalysisApr
) AS SALESDATA;
/*Core KPI for Management*/
/*===================================
Whicch month Generated highest Revenue
=====================================*/
SELECT MonthName,
       SUM(Revenue) AS Revenue
FROM (
    SELECT 'January' AS MonthName, Revenue FROM retailsalesanalysisJan
    UNION ALL
    SELECT 'February', Revenue FROM retailsalesanalysisFeb
    UNION ALL
    SELECT 'March', Revenue FROM retailsalesanalysisMar
    UNION ALL
    SELECT 'April', Revenue FROM retailsalesanalysisApr
) SalesData
GROUP BY MonthName
ORDER BY Revenue DESC;
/*===========
=January generated the highest revenue indicating strong sales momentum during Q1.
==========*//*
Stage 3: Product Analysis
Q4. Which products generated the most revenue?*/
SELECT Product,
       SUM(Revenue) AS Revenue
FROM (
    SELECT Product, Revenue FROM retailsalesanalysisJan
    UNION ALL
    SELECT Product, Revenue FROM retailsalesanalysisFeb
    UNION ALL
    SELECT Product, Revenue FROM retailsalesanalysisMar
    UNION ALL
    SELECT Product, Revenue FROM retailsalesanalysisApr
) SalesData
GROUP BY Product
ORDER BY Revenue DESC;
/*Desk generated highest revenue*/
/* Which product sold the most units*/
SELECT Product,
       SUM(Quantity) AS UnitsSold
FROM (
    SELECT Product, Quantity FROM retailsalesanalysisJan
    UNION ALL
    SELECT Product, Quantity FROM retailsalesanalysisFeb
    UNION ALL
    SELECT Product, Quantity FROM retailsalesanalysisMar
    UNION ALL
    SELECT Product, Quantity FROM retailsalesanalysisApr
) SalesData
GROUP BY Product
ORDER BY UnitsSold DESC;
/*Mouse=83*/
/*====================
Stage 4: Category Analysis
Q6. Which category performs better?====*/
SELECT Category,
       SUM(Revenue) AS Revenue
FROM (
    SELECT Category, Revenue FROM retailsalesanalysisJan
    UNION ALL
    SELECT Category, Revenue FROM retailsalesanalysisFeb
    UNION ALL
    SELECT Category, Revenue FROM retailsalesanalysisMar
    UNION ALL
    SELECT Category, Revenue FROM retailsalesanalysisApr
) SalesData
GROUP BY Category
ORDER BY Revenue DESC; 
/*================
Q7. What percentage of revenue comes from each category?=====*/

SELECT Category,
       ROUND(
            SUM(Revenue) * 100 /
            (SELECT SUM(Revenue)
             FROM (
                  SELECT Revenue FROM retailsalesanalysisJan
                  UNION ALL
                  SELECT Revenue FROM retailsalesanalysisFeb
                  UNION ALL
                  SELECT Revenue FROM retailsalesanalysisMar
                  UNION ALL
                  SELECT Revenue FROM retailsalesanalysisApr
             ) T),
       2) AS RevenueShare
FROM (
    SELECT Category, Revenue FROM retailsalesanalysisJan
    UNION ALL
    SELECT Category, Revenue FROM retailsalesanalysisFeb
    UNION ALL
    SELECT Category, Revenue FROM retailsalesanalysisMar
    UNION ALL
    SELECT Category, Revenue FROM retailsalesanalysisApr
) SalesData
GROUP BY Category;
/*======Management Level*/
SELECT *
FROM (
    SELECT * FROM retailsalesanalysisJan
    UNION ALL
    SELECT * FROM retailsalesanalysisFeb
    UNION ALL
    SELECT * FROM retailsalesanalysisMar
    UNION ALL
    SELECT * FROM retailsalesanalysisApr
) SalesData
ORDER BY Revenue DESC;
/*==========Product Generating More than Rs 1 lakh Revenue===============*/

Select Product,
       SUM(Revenue) AS Revenue
FROM (
    SELECT Product, Revenue FROM retailsalesanalysisJan
    UNION ALL
    SELECT Product, Revenue FROM retailsalesanalysisFeb
    UNION ALL
    SELECT Product, Revenue FROM retailsalesanalysisMar
    UNION ALL
    SELECT Product, Revenue FROM retailsalesanalysisApr
) SalesData
GROUP BY Product
HAVING Revenue > 100000
LIMIT 5;
/*===============Create A View =================*/
CREATE VIEW QuarterlySales AS
SELECT * FROM retailsalesanalysisJan
UNION ALL
SELECT * FROM retailsalesanalysisFeb
UNION ALL
SELECT * FROM retailsalesanalysisMar
UNION ALL
SELECT * FROM retailsalesanalysisApr;
/*Then All future Analysis Becomes-------*/
SELECT Product,
       SUM(Revenue)
FROM QuarterlySales
GROUP BY Product;

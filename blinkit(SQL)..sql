CREATE DATABASE blinkit;
USE blinkit;

CREATE TABLE sales (
 Item_Identifier VARCHAR(20),
 Item_Weight FLOAT,
 Item_Fat_Content VARCHAR(20),
 Item_Visibility FLOAT,
 Item_Type VARCHAR(50),
 Item_MRP FLOAT,
 Outlet_Identifier VARCHAR(20),
 Outlet_Establishment_Year INT,
 Outlet_Size VARCHAR(20),
 Outlet_Location_Type VARCHAR(20),
 Outlet_Type VARCHAR(50),
 Item_Outlet_Sales FLOAT
);

SELECT SUM(Item_Outlet_Sales) AS Total_Sales
FROM sales;

SELECT Item_Type,
       SUM(Item_Outlet_Sales) AS Total_Sales
FROM sales
GROUP BY Item_Type
ORDER BY Total_Sales DESC;

SELECT Outlet_Type,
       SUM(Item_Outlet_Sales) AS Sales
FROM sales
GROUP BY Outlet_Type;

SELECT Item_Fat_Content,
       AVG(Item_Outlet_Sales) AS Avg_Sales
FROM sales
GROUP BY Item_Fat_Content;

SELECT Outlet_Location_Type,
       SUM(Item_Outlet_Sales) AS Sales
FROM sales
GROUP BY Outlet_Location_Type;
-- 1.) Total Revenue and Profit Analysis:
-- Calculate the total revenue, total profit, and profit margin for each year:
SELECT
    Year,
    SUM(Revenue) AS Total_Revenue,
    SUM(Profit) AS Total_Profit,
    (SUM(Profit) / SUM(Revenue)) * 100 AS Profit_Margin
FROM dataset
GROUP BY Year;

-- 2.) Sales by Age Group and Gender:
-- Calculate the total sales (revenue) for each combination of age group and gender:
SELECT
    Age_Group,
    Customer_Gender,
    SUM(Revenue) AS Total_Sales
FROM dataset
GROUP BY Age_Group, Customer_Gender;


-- 3.) Most Profitable Products:
-- Identify the top N most profitable products:
SELECT
    Product,
    SUM(Profit) AS Total_Profit
FROM dataset
GROUP BY Product
ORDER BY Total_Profit DESC
LIMIT 1000;

-- 4.) Average Order Quantity by Country and State:
-- Calculate the average order quantity for each country and state:
SELECT
    Country,
    State,
    AVG(Order_Quantity) AS Avg_Order_Quantity
FROM dataset
GROUP BY Country, State;

-- 5.) Monthly Sales Trend:
-- Analyze the monthly sales trend over the years:
SELECT
    Year,
    Month,
    SUM(Revenue) AS Monthly_Sales
FROM dataset
GROUP BY Year, Month
ORDER BY Year, Month;

-- 6.) Product Category Sales Distribution:
-- Calculate the percentage distribution of sales across product categories for a specific year:
SELECT
    Year,
    Product_Category,
    (SUM(Revenue) / SUM(Revenue) OVER (PARTITION BY Year)) * 100 AS Sales_Percentage
FROM dataset
WHERE Year = '2016'
GROUP BY Year, Product_Category;

-- 7.) Total Sales by Sub-Category:
-- Calculate the total sales for each sub-category within a specific product category:
SELECT
    Product_Category,
    Sub_Category,
    SUM(Revenue) AS Total_Sales
FROM dataset
WHERE Product_Category = 'Bikes'
GROUP BY Product_Category, Sub_Category;

-- 8.) Customer Age Group Distribution:
-- Calculate the distribution of customers across different age groups:
SELECT
    Age_Group,
    COUNT(*) AS Customer_Count
FROM dataset
GROUP BY Age_Group;

-- 9.) Profitable States:
-- Find the top N most profitable states in terms of total profit:
SELECT
    State,
    SUM(Profit) AS Total_Profit
FROM dataset
GROUP BY State
ORDER BY Total_Profit DESC
LIMIT 1000;

-- 10.) Yearly Sales Growth:
-- Calculate the yearly sales growth percentage:
SELECT
    Year,
    SUM(Revenue) AS Total_Sales,
    LAG(SUM(Revenue)) OVER (ORDER BY Year) AS Previous_Year_Sales,
    ((SUM(Revenue) - LAG(SUM(Revenue)) OVER (ORDER BY Year)) / LAG(SUM(Revenue)) OVER (ORDER BY Year)) * 100 AS Sales_Growth
FROM dataset
GROUP BY Year;

-- 11.) Customer Gender Distribution by Country:
-- Determine the distribution of customer genders within each country:
SELECT
    Country,
    Customer_Gender,
    COUNT(*) AS Customer_Count
FROM dataset
GROUP BY Country, Customer_Gender;

-- 12.) Products with Negative Profit:
-- Identify products with negative profit:
SELECT
    Product,
    SUM(Profit) AS Total_Profit
FROM dataset
GROUP BY Product
HAVING Total_Profit < 0;

-- 13.) Average Profit Margin by Product Category:
-- Calculate the average profit margin for each product category:
SELECT
    Product_Category,
    AVG((Profit / Revenue) * 100) AS Avg_Profit_Margin
FROM dataset
GROUP BY Product_Category;

-- 14.) Monthly Sales Growth:
-- Analyze the monthly sales growth percentage:
SELECT
    Year,
    Month,
    SUM(Revenue) AS Monthly_Sales,
    LAG(SUM(Revenue)) OVER (ORDER BY Year, Month) AS Previous_Month_Sales,
    ((SUM(Revenue) - LAG(SUM(Revenue)) OVER (ORDER BY Year, Month)) / LAG(SUM(Revenue)) OVER (ORDER BY Year, Month)) * 100 AS Sales_Growth
FROM dataset
GROUP BY Year, Month
ORDER BY Year, Month;


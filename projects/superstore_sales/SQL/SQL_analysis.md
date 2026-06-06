## Cleaning

Removing Duplicates
```
SELECT 
    Order_ID,
    COUNT(*)
FROM avid-lacing-483619-b2.superstore_sales.raw_data
GROUP BY Order_ID
HAVING COUNT(*) > 1;
```

Cleaned Table
```
CREATE TABLE avid-lacing-483619-b2.superstore_sales.superstore_clean AS
SELECT *
FROM avid-lacing-483619-b2.superstore_sales.raw_data
WHERE Sales IS NOT NULL;
```


## Analysis

Avg Order Value
```
SELECT 
    ROUND(SUM(Sales) / COUNT(DISTINCT Order_ID), 2) AS Avg_Order_Value
FROM avid-lacing-483619-b2.superstore_sales.superstore_clean;
```

Avg Shipping Time
```
SELECT 
    ROUND(AVG(DATE_DIFF(Ship_Date, Order_Date, DAY)), 2) AS Avg_Shipping_Days
FROM avid-lacing-483619-b2.superstore_sales.superstore_clean;
```

Customer Segment Preformance
```
SELECT 
    Product_Name,
    Discount,
    ROUND(SUM(Profit), 2) AS Total_Loss
FROM avid-lacing-483619-b2.superstore_sales.superstore_clean
WHERE Profit < 0
GROUP BY Product_Name, Discount
ORDER BY Total_Loss ASC;
```

Discount vs Profitability
```
SELECT 
    Discount,
    ROUND(AVG(Profit), 2) AS Avg_Profit,
    ROUND(SUM(Sales), 2) AS Revenue
FROM avid-lacing-483619-b2.superstore_sales.superstore_clean
GROUP BY Discount
ORDER BY Discount;
```

Monthly Profit Trend
```
SELECT 
    FORMAT_DATE('%Y-%m', Order_Date) AS Month,
    ROUND(SUM(Profit), 2) AS Profit
FROM avid-lacing-483619-b2.superstore_sales.superstore_clean
GROUP BY Month
ORDER BY Month;
```

Monthly Revenue Trend
```
SELECT 
    FORMAT_DATE('%Y-%m', Order_Date) AS Month,
    ROUND(SUM(Sales), 2) AS Revenue
FROM avid-lacing-483619-b2.superstore_sales.superstore_clean
GROUP BY Month
ORDER BY Month;
```

Negative Profit
```
SELECT *
FROM avid-lacing-483619-b2.superstore_sales.raw_data
WHERE Profit < 0;
```

Profit by Category
```
SELECT 
    Category,
    ROUND(SUM(Sales), 2) AS Revenue,
    ROUND(SUM(Profit), 2) AS Profit
FROM avid-lacing-483619-b2.superstore_sales.superstore_clean
GROUP BY Category
ORDER BY Profit DESC;
```

Profit by State
```
SELECT 
    State,
    ROUND(SUM(Sales), 2) AS Revenue
FROM avid-lacing-483619-b2.superstore_sales.superstore_clean
GROUP BY State
ORDER BY Revenue DESC;
```

Profit by Sub-Category
```
SELECT 
    Sub_Category,
    ROUND(SUM(Sales), 2) AS Revenue,
    ROUND(SUM(Profit), 2) AS Profit
FROM avid-lacing-483619-b2.superstore_sales.superstore_clean
GROUP BY Sub_Category
ORDER BY Profit ASC;
```

Profit by Margin Percent
```
SELECT 
    ROUND((SUM(Profit) / SUM(Sales)) * 100, 2) AS Profit_Margin_Percent
FROM avid-lacing-483619-b2.superstore_sales.superstore_clean;
```

Quarterly Preformance
```
SELECT
    EXTRACT(YEAR FROM Order_Date) AS Year,
    EXTRACT(QUARTER FROM Order_Date) AS Quarter,
    ROUND(SUM(Sales), 2) AS Revenue,
    ROUND(SUM(Profit), 2) AS Profit
FROM `avid-lacing-483619-b2.superstore_sales.superstore_clean`
GROUP BY Year, Quarter
ORDER BY Year, Quarter;
```

Profit by Region
```
SELECT 
    Region,
    ROUND(SUM(Sales), 2) AS Revenue,
    ROUND(SUM(Profit), 2) AS Profit,
    ROUND((SUM(Profit) / SUM(Sales)) * 100, 2) AS Profit_Margin
FROM avid-lacing-483619-b2.superstore_sales.superstore_clean
GROUP BY Region
ORDER BY Profit DESC;
```

Shipping Mode Preformance
```
SELECT 
    Ship_Mode,
    ROUND(SUM(Sales), 2) AS Revenue,
    ROUND(SUM(Profit), 2) AS Profit
FROM avid-lacing-483619-b2.superstore_sales.superstore_clean
GROUP BY Ship_Mode
ORDER BY Profit DESC;
```

Top 10 by Revenue
```
SELECT 
    Product_Name,
    ROUND(SUM(Sales), 2) AS Revenue
FROM avid-lacing-483619-b2.superstore_sales.superstore_clean
GROUP BY Product_Name
ORDER BY Revenue DESC
LIMIT 10;
```

Top Customers by Revenue
```
SELECT 
    Customer_Name,
    ROUND(SUM(Sales), 2) AS Revenue,
    ROUND(SUM(Profit), 2) AS Profit
FROM avid-lacing-483619-b2.superstore_sales.superstore_clean
GROUP BY Customer_Name
ORDER BY Revenue DESC
LIMIT 10;
```

Total Orders
```
SELECT 
    COUNT(DISTINCT Order_ID) AS Total_Orders
FROM avid-lacing-483619-b2.superstore_sales.superstore_clean;
```

Total Profit
```
SELECT 
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM avid-lacing-483619-b2.superstore_sales.superstore_clean;
```

Total Revenue
```
SELECT 
    ROUND(SUM(Sales), 2) AS Total_Revenue
FROM avid-lacing-483619-b2.superstore_sales.superstore_clean;
```

Year-to-Year Growth
```
WITH yearly_sales AS (
    SELECT
        EXTRACT(YEAR FROM Order_Date) AS Year,
        SUM(Sales) AS Revenue
    FROM `avid-lacing-483619-b2.superstore_sales.superstore_clean`
    GROUP BY Year
)

SELECT
    Year,
    ROUND(Revenue, 2) AS Revenue,
    ROUND(
        (
            (Revenue - LAG(Revenue) OVER (ORDER BY Year))
            / LAG(Revenue) OVER (ORDER BY Year)
        ) * 100,
        2
    ) AS YoY_Growth_Percent
FROM yearly_sales
ORDER BY Year;
```

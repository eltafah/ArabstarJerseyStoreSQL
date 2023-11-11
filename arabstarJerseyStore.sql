--to get the total sales per product we run this query
SELECT Product, SUM([cost(ksh)]* [| Quantity sold] ) AS TotalSales
FROM [dbo].[arabstar]
GROUP BY Product
ORDER BY TotalSales DESC;

--to get the sales by location and popularity

SELECT Location, Popularity, SUM([cost(ksh)] * [| Quantity sold]) AS TotalSales
FROM [dbo].[arabstar]
GROUP BY Location, Popularity;

--to view the monthly sales trend we run this query
SELECT MONTH(Date) AS Month, YEAR(Date) AS Year, SUM([cost(ksh)] * [| Quantity sold]) AS MonthlySales
FROM [dbo].[arabstar]
GROUP BY YEAR(Date), MONTH(Date)
ORDER BY Year, Month;

--to get average price by product popularity we run the query below
SELECT Product, Popularity, AVG([cost(ksh)]) AS AveragePrice
FROM [dbo].[arabstar]
GROUP BY Product, Popularity;

--Top 10 Selling Products
SELECT TOP 10 Product, SUM([cost(ksh)] *[| Quantity sold] ) AS TotalSales
FROM [dbo].[arabstar]
GROUP BY Product
ORDER BY TotalSales DESC;

 --International vs. Domestic Sales
 SELECT Location, SUM([cost(ksh)] *[| Quantity sold] ) AS TotalSales
FROM [dbo].[arabstar]
GROUP BY Location;


SELECT Customer_name, State, Sales,
CASE
	WHEN Sales <= 300 THEN 'Poor Sales'
    WHEN Sales BETWEEN 301 AND 1500 THEN 'Good Sales'
    WHEN Sales > 1500 THEN 'Hot Sales'
END Conclusion
FROM superstore1
ORDER BY Customer_name ASC;

-- subquery
SELECT Customer_name,
Sales,
(SELECT SUM(Sales) FROM superstore1) as Total_Sales
FROM superstore1;

SELECT State, avg_profit
FROM
(SELECT State, Profit, AVG(Profit) avg_profit, Max(Profit) max_profit,
SUM(Profit) Total_profit
FROM superstore1
Group by State, Profit) as Newt;

-- window function eg row number, rank number, Dense rank
SELECT State, 
Profit, 
SUM(Profit) OVER(PARTITION BY State ORDER BY Category) as rolling_total
FROM superstore1;

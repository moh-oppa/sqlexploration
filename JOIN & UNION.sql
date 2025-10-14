-- Left join = left outer join(left table takes prioirity), join = inner join, right join (right table takes priority)

-- Self join 

SELECT sp1.Row_id as id1,
sp2.Row_id as id2,
sp1.Customer_name as customer1,
sp2.Customer_name as customer2
FROM superstore1 as sp1
JOIN superstore1 as sp2
	ON sp1.Row_id + 2 = sp2.Row_id
ORDER BY Customer1 ASC;
    
-- join multiple tables (join based on the commom columns present

-- Union
SELECT order_date, 
State, 
Category, 
Sales,
'High_sales' as Label
FROM superstore1
WHERE Sales > 1000 
UNION ALL
SELECT order_date, 
City, 
Category, 
Profit,
'High_profit' as Label
FROM superstore1
WHERE Profit > 300
ORDER BY State asc;


select State, max(sales),min(sales),avg(profit)
from superstore1
group by State;

Select * 
from superstore1
order by Customer_name, state desc;

select State, Category, min(sales)
from superstore1
where Customer_name like "%jo%"
group by State, category
having min(sales) < 5
order by state;

-- limit & aliasing
select city, Product_name, profit
from superstore1
order by profit desc
limit 1, 10;

select Customer_name,
max(quantity) as max_quatity,
min(sales) as min_sales,
avg(profit) as avg_profit
from superstore1
group by Customer_name;
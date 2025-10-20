WITH cte1 AS
( SELECT State, avg(Sales) avg_s, avg(Quantity) avg_q,
min(Sales) min_s, min(Quantity) min_q, max(Quantity) max_q, max(Sales) max_s
FROM superstore1
Group by State
order by State
),
cte2 (State , Total) as
(
SELECT state, SUM(Profit)
FROM superstore1
Group by state
)

SELECT *
FROM cte1
Join cte2
	on cte1. state = cte2.state
ORDER BY cte1.STATE;

-- Temp tables
CREATE TEMPORARY TABLE temptable1
(
first_name varchar(50),
last_name varchar(50),
snack varchar(50)
);

insert into temptable1
values 
('Frisky', 'Tim', 'choco rings'),
('Lanky', 'Jamie', 'Milk Candy'),
('Sus', 'Sas', 'Lollipop'),
('Macho', 'Muby', 'Cake'),
('Racist', 'Ro', 'Buns')
;

select * from temptable1;
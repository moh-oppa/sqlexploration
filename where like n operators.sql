create table superstore1 as
select * from superstore;

select * from superstore1
where ship_mode = 'first class';

select * from superstore1
where quantity > 11 ;

select * from superstore1
where State = 'California' and Category = 'Technology' ;

select * from superstore1
where Category = 'office supplies' or Sales >= 500 ;

select * from superstore1
where Customer_name like 'jo%'
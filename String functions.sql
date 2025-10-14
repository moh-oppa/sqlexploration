SELECT Customer_name, LENGTH(Customer_name) len
FROM superstore1
ORDER BY len ;

-- UPPER, LOWER, TRIM, ltrim/rtrim, 
SELECT Customer_name, LOWER(Customer_name) len
FROM superstore1 ;

SELECT Customer_name, UPPER(Customer_name) len
FROM superstore1;

SELECT Customer_name, LEFT(Customer_name, 6) firstname
FROM superstore1;

SELECT Customer_name, RIGHT(Customer_name, 6) len
FROM superstore1;

SELECT order_date, ship_date,
SUBSTRING(Order_date, 3,2) month
FROM superstore1;

SELECT ship_date, REPLACE(Ship_date, '/','-') len
FROM superstore1;

-- LOCATE, CONCAT
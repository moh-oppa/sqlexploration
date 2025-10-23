CREATE TABLE superstore1 AS 
SELECT * 
FROM superstore;

SELECT * 
FROM superstore1
ORDER BY Customer_name asc;

-- Removing Duplicates
SELECT order_id, Product_id, Quantity, COUNT(*) as duplicates
FROM superstore1
GROUP BY order_id, Product_id, Quantity
HAVING COUNT(*) > 1;

DELETE t1
FROM superstore1 t1
JOIN superstore t2
	ON t1.order_id = t2.order_id
    AND t1.Product_id = t2.Product_id
    AND t1.Quantity = t2.Quantity
    AND t1.Row_id > t2.Row_id;

-- SELECT *
-- FROM superstore1
-- where Sub_category IS NULL OR Sub_category = ' ';

SELECT order_date,
STR_TO_DATE(order_date, '%m/%d/%Y')
FROM superstore1;

UPDATE superstore1
SET order_date = STR_TO_DATE(order_date, '%m/%d/%Y');

UPDATE superstore1
SET ship_date = STR_TO_DATE(ship_date, '%m/%d/%Y');

-- use right data type 
ALTER TABLE superstore1
MODIFY COLUMN `order_date` DATE,
MODIFY COLUMN `ship_date` DATE;

-- SHOW COLUMNS FROM superstore1;

-- Delete unnecessary columns
ALTER TABLE superstore1
DROP COLUMN Country,
DROP COLUMN Region,
DROP COLUMN Discount;
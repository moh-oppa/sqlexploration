-- create duplicate dataset
CREATE TABLE bmwsales AS
SELECT * 
FROM bmw_sales_data;

ALTER TABLE bmwsales 
ADD COLUMN Row_id INT AUTO_INCREMENT PRIMARY KEY;

SELECT * 
FROM bmwsales;
-- ORDER BY `Year`DESC, Region, Sales_Volume DESC;

-- check and Remove duplicates
SELECT Model, `Year`, Region,Engine_Size_L , Mileage_KM, COUNT(*) as duplicates
FROM bmwsales
GROUP BY Model, `Year` ,Region,Engine_Size_L,Mileage_KM
HAVING count(*) > 1;

DELETE t1
FROM bmwsales t1
JOIN bmwsales t2
	ON t1.Model = t2.Model
    AND t1.`Year` = t2.`Year`
    AND t1.Region = t2.Region
    AND t1.Engine_Size_L = t2.Engine_Size_L
    AND t1.Mileage_KM = t2.Mileage_KM
    AND t1. Row_id > t2.Row_id;


-- check Null Values
SELECT * 
FROM bmwsales
WHERE Model IS NULL 
	OR `Year` IS NULL 
    OR Region IS NULL 
    OR Price_USD IS NULL
    OR Sales_volume IS NULL;
    
-- check blank values
SELECT * 
FROM bmwsales
WHERE Model = ' ' 
	OR `Year` = ' ' 
    OR Region = ' ' 
    OR Price_USD = ' '
    OR Sales_volume = ' ';

-- SHOW COLUMNS FROM bmwsales;

-- SELECT * 
-- FROM bmwsales
-- WHERE Region NOT IN ('Asia', 'Africa','Middle east', 'South America', 'North America', 'Europe');

-- SELECT * 
-- FROM bmwsales
-- WHERE Fuel_Type NOT IN ('Diesel','Hybrid','Electric','Petrol');

-- SELECT * 
-- FROM bmwsales
-- WHERE Transmission NOT IN ('Manual','Automatic');
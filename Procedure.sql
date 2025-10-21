-- stored procedures
DELIMITER $$
-- USE 'store` $$
CREATE PROCEDURE pro1()
BEGIN
	SELECT order_date, ship_date, State, Sub_category
	FROM superstore1
	ORDER BY State, order_date;
END $$
DELIMITER ;

CALL pro1();

-- Parameter
DELIMITER $$
CREATE PROCEDURE verify_order(p_order_date DATE)
BEGIN
	SELECT order_date, ship_date, Customer_name, State, Sub_category, Quantity
	FROM superstore1
    WHERE order_date = p_order_date
	ORDER BY State, order_date;
END $$
DELIMITER ;

CALL verify_order('2014-04-08');

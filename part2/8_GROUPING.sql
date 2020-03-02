


-- when you aggrate function 
-- sometimes you need to show 
-- based on what you want to aggraate
-- suppose you want to count the customer from a market
-- which in the customer column



-- the SQL is

SELECT COUNT(customerID) from customers;


-- but if i tell you that this table has a column called area and you want to count the customer by the area then what happen?

-- the SQL will be

-- it will be easy

SELECT area
	,COUNT(customerID) as total_customers
FROM customers
GROUP BY area;

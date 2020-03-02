
-- aggrate function
-- it is some function that helpful for summarizing data

--1)AVG()
--2)count()
--3)MIN()
--4)MAX()
--5)SUM()

-- this is prebuit function
-- you dont have to write this manually

-- example 
-- if you want to know the avegrage

SELECT AVG(unitPrice) as avg_price
FROM products;


-- if you want to count the record are in the table

SELECT COUNT(*) AS total_customers
FROM customers;

-- if youw want to count a specfic column
SELECT COUNT(customerID) AS total_customers FROM customers;

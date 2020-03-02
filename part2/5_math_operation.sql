-- you can use math operation 
-- in the SQL

-- example
-- suppose you have
-- a lot of product with product_price 
-- and unit price and you want to
-- calculate the price of the product
-- so here is the sql

SELECT productID
	,unitOrder
	,unitPrice
	-- here you do the math opearation

	,unitOrder*unitPrice AS total_price

FROM products

-- it will give you the data with a 
-- new column


-- ORDER of operation

-- you must follow order of operation
-- to make this work

--ORDER OF OPERATION

-- 1) Parentheses
-- 2) Exponents
-- 3) Multiplication
-- 4) Division
-- 5) Addition
-- 6) Substratio




-- for example suppose you have the discount for diferen tproduct then your
-- sql will be just like this

SELECT
productID
,quantity
,unitPrice
,Discount

(unitPrice-Discount)*quantity AS TOTAL_COST
FROM products

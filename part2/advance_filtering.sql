-- there are some advance filtering system
-- like in or between not etc

-- IN operator
-- with a IN  clause you can add multiple condition
-- its like a betwen  column
-- but there is difference between the BETWEEN and the IN oprator
-- you can add different condition in a command seperated 
-- inside a brackets and use them for the IN Clause

-- example

SELECT product_id
	,supplier_id,
	,unit_price
From products
Where supplier_id IN (9,10,11);




-- OR Condition

-- or cindition can be simmiler like in condition
-- lets see an example

SELECT product_id
	,supplier-id
	,unit_price
	,product_name
FROM products
WHERE product_name = "banana" OR "coconut"


-- BUT REMEMBER IF THE FIRST CLAUSE IS A MATCH 
-- SQL NEVER SEARCH FOR THE SECOND ONE 
-- THAT MEANS IF THE "banana" IS FOUND THE DATABASE WILL 
-- NOT TRY TO FIND THE "coconut"




-- IN WORK FASTER THAN THE OR AND IN THE 'IN' CLAUSE YOU DONT HAVE TO WORRY 
-- ABOUT THE ORDER BECAUSE UNLINE OR . IN THE IN CLAUSE EVERYTHING WIL BE SEARCHED EVEN THE FIRST ONE IS A MATCH


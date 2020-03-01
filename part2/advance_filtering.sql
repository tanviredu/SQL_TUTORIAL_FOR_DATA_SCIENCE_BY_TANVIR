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

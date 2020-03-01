
-- this is the basic command for the 
-- for querying any data 
-- and remember we will add more filter 
-- with it
SELECT column_1,column_2 from table;

-- if you want to find something that is equal to something then

SELECT column1,column2 from table where value=<simething>

example:

SELECT product_namee,product,price from store where product_name="banana";



-- you want to exclude someting then you have to use the not equal cluse which is "<>"

Select column_1,column_2 from table where value <> something


-- example

-- always try to write this code in this format

SELECT product_name
	,price
	,date
	,full_name,
	,company

FROM product_table
where product_name <> "banana";



-- greater than
Select column_1,column_2 from table where value
    > something

-- less than

Select column_1,column_2 from table where value
    < something



-- greater than and equal

SELECT product_name,price,date FROM product where price >=150;

-- it will give everything which as price more than 150




-- less than and equal
SELECT product_name,price,date,full_name FROM product where price <=150;


-- BETWEEN a range

SELECT product_name
	,price
	,company
	,date
	,id
FROM product_table
WHERE price BETWEEN 100 AND 200;

-- ISNULL

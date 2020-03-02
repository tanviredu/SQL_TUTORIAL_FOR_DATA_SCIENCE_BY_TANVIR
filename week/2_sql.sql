--1.Question 1

--All of the questions in this quiz refer to the open source Chinook Database. Please familiarize yourself with the ER diagram to familiarize yourself with the table and column names to write accurate queries and get the appropriate answers.

--Run Query: Find all the tracks that have a length of 5,000,000 milliseconds or more.

SELECT COUNT(TrackId) from Tracks where milliseconds >=5000000

ans::2


--All of the questions in this quiz refer to the open source Chinook Database. Please familiarize yourself with the ER diagram to familiarize yourself with the table and column names to write accurate queries and get the appropriate answers.

--Run Query: Find all the invoices whose total is between $5 and $15 dollars.


SELECT COUNT(InvoiceId) as TOTALINVO
,Total
,InvoiceId
FROM Invoices
WHERE Total BETWEEN 5 AND 15;


--Run Query: Find all the customers from the following States: RJ, DF, AB, BC, CA, WA, NY

SELECT FirstName,LastName,State,Company
   ...> FROM Customers
   ...> Where State IN ('RJ','DF','AB','BC','CA','WA','NY');


--Run Query: Find all the invoices for customer 56 and 58 where the total was between $1.00 and $5.00.

Select * FROM Invoices where CustomerId In (56,58) and Total BETWEEN 1.00 AND 5.00


--Run Query: Find all the tracks whose name starts with 'All'..

SELECT COUNT(*) from Tracks Where Name LIKE 'All%' LIMIT 10



--Run Query: Find all the customer emails that start with "J" and are from gmail.com.


SELECT Email FROM customer where Email like 'j%@gmail.com'



--Run Query: Find all the invoices from the billing city Brasília, Edmonton, and Vancouver and sort in descending order by invoice ID.

SELECT * from Invoices Where BillingCity IN ('Brasília', 'Edmonton','Vancouver') ORDER BY InvoiceId Desc;


--Run Query: Show the number of orders placed by each customer (hint: this is found in the invoices table) and sort the result by the number of orders in descending order.


SELECT COUNT(InvoiceId) from Invoices GROUP BY CustomerId ORDER BY CustomerId DESC;


While the number of records returned is limited to 10, the query, if run correctly, will indicate how many total records there are. Enter that number below.

SELECT AlbumId, Count(*) AS Ntracks
FROM Tracks
GROUP BY AlbumId
HAVING COUNT (*) >= 12

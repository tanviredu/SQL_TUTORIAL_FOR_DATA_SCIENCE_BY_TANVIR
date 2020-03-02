--1) For all the questions in this practice set, you will be using the Salary by Job Range Table. This is a single table titled: salary_range_by_job_classification. This table contains the following columns:

ans :: yes

--2) Find the distinct values for the extended step. The code has been started for you, but you will need to program the third line yourself before running the query.

-- hint :: find which one is not there

-- sql

SELECT DISTINCT Extended_step
FROM
salary_range_by_job_classification;

-- it will return some value 
-- may return duplicate value
-- because we use the DISTINCT
-- just find which value is not there 
-- for me its 5





--3)Excluding $0.00, what is the minimum bi-weekly high rate of pay (please include the dollar sign and decimal point in your answer)? The code has been started for you, but you will need to add onto the last line of code to get the correct answer.



--> just find the minimul value
-- but not the zero
-- you have to exclude the zero with <>

SELECT MIN(Biweekly_high_Rate)
FROM salary_range_by_job_classification
WHERE Biweekly_high_Rate <> '$0.00'
ORDER BY Biweekly_High_Rate ASC;


-- ans for me is $100.00

--4)What is the maximum biweekly high rate of pay (please include the dollar sign and decimal point in your answer)? The code has been started for you, but you will need to add onto the last line of code to get the correct answer.


--> Find the MAX value
--> you dont have to exclude the zero
--> its unnecessary

SELECT
MAX(Biweekly_high_Rate)
FROM salary_range_by_job_classification
ORDER BY Biweekly_High_Rate DESC;




--5)What is the pay type for all the job codes that start with '03'? The code has been started for you, but you will need to program the fourth and fifth lines yourself before running the query.


--> we have to use the wildcard with this

--'03%'

Select
job_code,
pay_type
from salary_range_by_job_classification
where job_code like '03%'



--6)Run a query to find the Effective Date (eff_date) or Salary End Date (sal_end_date) for grade Q90H0? The code has been started for you, but you will need to program the third through the sixth lines yourself before running the query.




Select
grade
,eff_date
,sal_end_date
from salary_range_by_job_classification where grade ='Q90H0'



--7)Write and run a query, with no starter code to answer this question: What Step are Job Codes 0110-0400? Hint: there are 6 lines to run this query.

Select
Step
,Job_Code
from salary_range_by_job_classification where Job_Code IN ('0110','0400')




--8)Write and run a query, with no starter code or hints to answer this question: What is the Biweekly High Rate minus the Biweekly Low Rate for job Code 0170?

Select
Job_Code,
Biweekly_High_Rate,
Biweekly_Low_Rate,
Biweekly_High_Rate-Biweekly_Low_Rate
AS ans_table


from salary_range_by_job_classification where Job_Code ='0170'


--9) Write and run a query, with no starter code or hints to answer this question: What is the Extended Step for Pay Types M, H, and D? 

Select
Extended_Step
,Pay_Type
from salary_range_by_job_classification
Where Pay_Type IN ('M','H','D')



--Write and run a query, with no starter code or hints to answer this question: What is the step for Union Code 990 and a Set ID of SFMTA or COMMN? 


Select
Step,Union_Code
from salary_range_by_job_classification
WHere Union_Code='990'
and SetID IN ('COMMN','SFMTA')



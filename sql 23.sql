-- Window Functions
	-- Aggregated Function
-- Sum, AVG, Count, Min, Max
	-- Ranking
-- Row_number, RANK, DENSE_RANK, Percent_RANK
	-- Value/Analytic
-- LEAD, LAG, First_Value, Last_Value

select * from employee;

select *,
case when hiredate <= '2019-01-01' then 'Oldest Employee'
when hiredate between '2019-01-01' and '2022-12-31' then 'Tenured Employee'
when hiredate >= '2023-01-01' then 'New Employee' end 'EmployeeCategory' 
from employee;

select *,
CASE When lead(salary) over(partition by Department) > salary 
then 'Higher' else 'Lower' end ld_sal_Com,
lead(salary) over(partition by Department) ld,
lag(salary) over(partition by Department) lg
from employee;
-- where Department = 'IT';

-- Write a query to get the percentage of revenue from previous date
-- If there is low revenue % then 'Low Percentage' or 'Higher Percentage' or 'Equal'
select distinct salesdate,
sum(salesamount) over(order by SalesDate) Running_Total
from sales;



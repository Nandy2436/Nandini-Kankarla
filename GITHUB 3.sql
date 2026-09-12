select Department, sum(salary) 
from employee
group by Department;

-- Window Functions
	-- Aggregated Function
-- Sum, AVG, Count, Min, Max
	-- Ranking
-- Row_number, RANK, DENSE_RANK, Percent_RANK
	-- Value/Analytic
-- LEAD, LAG, First_Value, Last_Value

select EmployeeID, FirstName, LastName, Department, 
sum(salary) 
from employee
group by EmployeeID, FirstName, LastName, Department;

select *,
sum(Salary) over(partition by Department) Department_Salary
from employee;

select a.*, b.SalesDate
from product a
join sales b ON a.productid = b.productid;

select *,
sum(Salary) over() Department_Salary
from employee;

select *,
round(avg(Salary) over(partition by Department)) Department_Salary,
sum(salary) over(partition by Department) Total_salary,
min(salary) over(partition by Department) Min_Amount,
MAX(salary) over(partition by Department) Max_Amount
from employee;

select EmployeeID, 
sum(salary) total_salary,
(salary * 100)/ sum(Salary) over() Percentage_Salary
from employee
group by EmployeeID;

select *, 
ROUND((salary / sum(salary) over()) * 100) AS Percentage
from employee;

select *, 
ROUND((salary / sum(salary) over(partition by department )) * 100) AS Percentage
from employee;

-- RANK, DENSE_RANK

-- Create a result Table in your DB
-- Input >>> Columns should be Roll_no, Marks_Secured, Maximum_Marks
-- Output >>>
-- 1. Percentage of Marks Secured
-- 2. Rank
-- 3. Dense_rank

-- CTE = Common Table Expression / Temperory Table


with abc AS(
Select *,
rank() over(order by Salary desc) Ordered_Salary
from employee
)
select * from abc
where Ordered_Salary = 8;

select * from employee;
-- Get me the 4th highest salary

select salary from employee;


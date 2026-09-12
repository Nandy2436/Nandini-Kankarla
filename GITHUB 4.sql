select *from employee;
select distinct department from employee;
select sum(salary) from employee;
select count(*) from employee;
-- AGGREGATION 
select department,sum(salary) from employee
group by department
select Department ,sum(salary), avg(salary), count(salary), min(salary), max(salary) 
from employee
group by Department;
select Department AS DEPARTMENT_NAME ,sum(salary) AS TOTAL_SALARY,
avg(salary) AVERAGE_SALARY,
count(salary) EMPLOYEE_COUNT,
 min(salary) MINIMUM_SALARY,
max(salary) MAXIMUM_SALARY
from employee
group by Department;

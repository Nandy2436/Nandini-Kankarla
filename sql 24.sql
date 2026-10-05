select * from employee;

with percentage AS (
select *,
sum(SalesAmount) over(order by SalesDate) Running_Total
from sales)
select distinct salesDate, running_total,
lead(salesamount) OVER(order by salesdate) percent
from percentage;


With ABC as
(Select Distinct salesdate,
Sum(salesAmount) Over(Order By salesdate) as Running_Amount from sales)
select , (Running_Amount-lag(Running_Amount,1) Over())100/Running_Amount as Percent ,
Case 
when (Running_Amount-lag(Running_Amount,1) Over())*100/Running_Amount>=15 then 'Higher'
when (Running_Amount-lag(Running_Amount,1) Over())*100/Running_Amount<15 then 'Lower'
end as XYZ
from ABC;

with xyz AS(
select distinct salesdate,
sum(salesamount) over(order by salesdate) salesamount
from sales)
SELECT 
    SalesDate,
    LAG(SalesAmount) OVER (ORDER BY SalesDate) AS PrevAmount,
    ROUND(((SalesAmount - LAG(SalesAmount) OVER (ORDER BY SalesDate)) / 
           LAG(SalesAmount) OVER (ORDER BY SalesDate)) * 100, 2) AS PercentageChange,
    CASE
        WHEN SalesAmount < LAG(SalesAmount) OVER (ORDER BY SalesDate) THEN 'Low Percentage'
        WHEN SalesAmount > LAG(SalesAmount) OVER (ORDER BY SalesDate) THEN 'Higher Percentage'
        ELSE 'Equal'
    END AS RevenueStatus
FROM XYZ;


select *,
extract(month from hiredate) mm,
extract(day from hiredate) dd,
extract(year from hiredate) yy,
extract(quarter from hiredate) qt,
concat(extract(quarter from hiredate),'-', extract(year from hiredate)) qt_yy
from employee;

-- please add 2 days in the current day

with cte AS(
select *,
rank() over(order by salary desc) rnk
from employee
where Department = 'IT')
select * from cte where rnk =3;

select * from
(select *,
rank() over(order by salary desc) rnk
from employee
where department = 'IT'
) x
where rnk = 3;

select max(salary) 
from employee;

-- select  max(salary) 
-- from employee 
-- where salary NOT IN(select max(salary) from employee
-- where salary not in(select max(salary) from employee));

select * from employee;



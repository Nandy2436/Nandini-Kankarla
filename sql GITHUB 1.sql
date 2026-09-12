select * from employee;

insert into employee(EmployeeID,FirstName,LastName,Department,Salary,HireDate)
values(21 , 'nandini','reddy','HR','45859','2026-7-21'),
(22, 'Rajesh', 'Kumar', 'HR', 32436, '2026-07-21');

update employee set salary = 81000
where employeeid = 5;
 set SQL_safe_updates = 0;
 
update employee set LASTNAME =' DAVIDSON'
where employeeid = 5;

delete from employee where EmployeeID= 22;
delete from employee where EmployeeID= 21;
SELECT * from customers;
delete from orders where order_id IN('B-25989', 'B-25849');
select * from orders where order_id = 'B-25849';

alter table customers 
drop column Country_Code; 
-- if u whant to delete the column use alter 

update customers set email = null;

select * 
from product a
join sales b ON a.ProductID = b.ProductID;

select a.productid, a.ProductName, b.salesdate, SUM(b.salesamount), avg(b.SalesAmount)
from product a
left join sales b ON a.ProductID = b.ProductID
where a.ProductID = 1
group by a.productid, a.ProductName, b.salesdate;

select * from sales;
select * from product;

select a.productid, productname,SalesDate , sum(SalesAmount), count(SalesAmount)
from  sales a 
left join product b  ON a.ProductID = b.ProductID
group by SalesDate, ProductName, a.productid;

select a.productid, a.ProductName, b.salesdate, SUM(b.salesamount), count(b.SalesAmount)
from product a
right join sales b ON a.ProductID = b.ProductID
group by b.salesdate, a.ProductName, a.productid ;
-- here both left and right giving the same output
select salesdate,sum(s.salesamount) 
from sales
group by salesdate; 
-- every day salesamount

select salesdate,sum(s.salesamount),count(salesamount) 
from sales
group by salesdate; -- daily sales count

select a.productid, productname,SalesDate , sum(SalesAmount), count(SalesAmount)
from sales a
left join product b ON a.ProductID = b.ProductID
group by SalesDate, ProductName, a.productid;
-- observe the prod ids changing and salesdate starting  1 to so on ..
select a.productid, a.ProductName, b.salesdate, SUM(b.salesamount), count(b.SalesAmount)
from sales b
right join product a ON a.ProductID = b.ProductID
group by b.salesdate, a.ProductName, a.productid ;
-- here both left and right are giving diff output ,here sales is same but joining to product is diff
-- here prod id is starting from 1 to so on ..
--prod is left and sales is right ..
-- for sales left is sales only,right is prod

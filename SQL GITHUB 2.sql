create database skillit_july;
use skillit_july;
select * from product;
select * from sales;

select distinct productid from product;
select distinct productid from sales;

select p.productid, p.productname,s.salesdate,sum(s.salesamount)totalamount
from product p
inner join sales s ON p.productid = s.productid
group by p.productid ,p.productname,s.salesdate;

select p.productid,p.productname,sum(s.salesamount)totalamount
from product p
left join sales s ON p.productid =s.productid
group by p.productid,p.productname

select p.productid,p.productname,sum(s.salesamount)totalamount
from sales s
right join product p ON s.productid =p.productid
group by p.productid,p.productname;

select p.productid,p.productname,sum(s.salesamount)totalamount
from product p
right join sales s ON s.productid =p.productid
group by p.productid,p.productname;


select p.productid, p.productname,sum(s.salesamount)totalamount,s.salesdate
from product p
inner join sales s ON p.productid = s.productid
where  p.productid =1
group by p.productid ,p.productname,s.salesdate;

select p.productid, p.productname,sum(s.salesamount)totalamount
from product p
inner join sales s ON p.productid = s.productid
where  p.productid =1
group by p.productid ,p.productname;
 
select p.productid, p.productname,s.salesdate,sum(s.salesamount) totalamount
from product p
cross join sales s ON p.productid = s.productid
group by p.productid ,p.productname,s.salesdate;
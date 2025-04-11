use testdb;

select employee_id, name ,
case 
when salary <10000 then "Low"
when salary between 20000 and 800000 then "high"
else "None"
end as salary_grade 
from employees_details;

select * from employees_details;

update employees_details
set salary = 
case when department = "IT" then salary = 200
else salary
end;

select * from orderstable;

select orderid,orderdate,
case 
when amount<=250.00 then "Affordable"
when amount>200.00 then "Expensive"
else "neutral"
end as details from orderstable order by orderid desc;


explain select * from orderstable where orderid = 101;
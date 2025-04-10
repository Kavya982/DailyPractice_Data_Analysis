use testdb;

create table employee(id int,name varchar(20),job_desc varchar(20),salary int,hire_date date);

insert into employee values(1,"keifer","HR",120000,"2025-09-08"),(2,"yuri","Developer",100000,"2024-09-03"),
(3,"kalix","manager",130000,"2020-09-08"),
(4,"Luna","manager",129000,"2024-09-08"),
(5,"jay","developer",340000,"2023-09-08");

select * from employee;

select job_desc,avg(salary) as avg_salary from employee group by job_desc;

select job_desc, count(*) from employee group by job_desc;

select job_desc,avg(salary) as avg_salary, count(*) from employee group by job_desc ;

select job_desc,avg(salary) as avg_salary, count(*) from employee group by job_desc having count(*) > 1;

select job_desc,avg(salary) as avg_salary, count(*) from employee group by job_desc having count(*) > 1 ;

select job_desc ,count(id) from employee 
where salary > 10000 
group by job_desc
 having count(id)>1 
 order by job_desc;
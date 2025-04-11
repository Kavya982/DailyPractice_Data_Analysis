use testdb;

CREATE TABLE employees_details (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);
 
INSERT INTO employees_details  VALUES
(1, 'Alice',   'Sales', 50000),
(2, 'Bob',     'Sales', 60000),
(3, 'Charlie', 'Sales', 45000),
(4, 'David',   'IT',    70000),
(5, 'Eva',     'IT',    80000),
(6, 'Frank',   'IT',    75000);

insert into employees_details values (7, 'Keifer',   'IT',    75000);

select * from employees_details;

select employee_id,name,department,salary,
 row_number() over  (partition by department order by salary desc) as rank_in_dept 
 from employees_details ;

select employee_id,name,department,salary, sum(salary) 
over (order by salary) as running_total 
from employees_details;

select employee_id,name,department,salary, 
lag(salary,1,0) over (order by salary) as previous_salary ,
 lead(salary,1,0) over (order by salary) as next_salary 
 from employees_details ;
 
 select employee_id,name,department,salary,
 rank() over  (partition by department order by salary desc) 
 as salary_rank
 from employees_details ;
 
  select employee_id,name,department,salary,
 dense_rank() over  (partition by department order by salary desc) 
 as salary_rank
 from employees_details ;

 select employee_id,name,department,salary,
 ntile(4) over (order by salary ) as salary_quartile 
 from employees_details;
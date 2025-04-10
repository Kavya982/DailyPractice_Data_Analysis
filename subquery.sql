use testdb;
show tables;

select * from employee;

select name,salary from employee where salary <(select avg(salary) from employee);

CREATE TABLE departments (

    department_id INT PRIMARY KEY,

    department_name VARCHAR(50)

);
 
CREATE TABLE employees (

    employee_id INT PRIMARY KEY,

    employee_name VARCHAR(50),

    department_id INT,

    FOREIGN KEY (department_id) REFERENCES departments(department_id)

);

 
INSERT INTO departments (department_id, department_name) VALUES

(1, 'Sales'),

(2, 'Marketing'),

(3, 'HR');
 
INSERT INTO employees (employee_id, employee_name, department_id) VALUES

(101, 'Kalix', 1),

(102, 'Yuri', 1),

(103, 'Keifer', 2),

(104, 'Denzel', 3);
 


select * from employees;

select * from departments;

select employee_name from employees
 where department_id in
 (select department_id from departments where department_name = "Sales");
 
SELECT employee_name, 
       (SELECT department_name 
        FROM departments 
        WHERE departments.department_id = employees.department_id) AS depart_name 
FROM employees;

select employee_name from employees where employee_id in  (select department_id from departments group by department_name having count(department_name) >1);
 
 select count(department_name) from departments group by department_name;
 
 select 1 from employees as e , departments as d where e.employee_id=d.department_id;
 
 insert into departments values(4,"Training");
 
 select department_name from departments where exists (select 1 from employees as e , departments as d where e.employee_id=d.department_id);
 
 
 select employee_name,department_id
 from employees
 where employee_id > (select avg(employee_id) from employees);
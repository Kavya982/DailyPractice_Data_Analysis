select Ucase("Kavya Meda") as UpperCasedName;

select LCASE("Kavya Meda") as LowerCasedName;

select mid("Kavya Meda",2,5) as substringe;

select length("Kavya Meda") as UpperCasedName;

select now() as currentdateandtime;

select round(12.456,2) as roundedvalue;

select format(12.34578,3) as flooredvalue;


select employee_name ,length(employee_name) as len from employees;

select employee_id,ucase(employee_name) as employee_names from employees;

select * from orderstable;

select CustomerID,round(amount,1) as Amount from orderstable;
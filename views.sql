use testdb;

select * from customerstable;

create view get_details as 
select CustomerID,CustomerName,ContactName from customerstable;

select * from get_details;

create or replace view get_details as select * from customerstable;

select * from get_details;

update get_details
set country = "India" 
where customerID = 4;

select * from customerstable;
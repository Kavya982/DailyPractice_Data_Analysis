use testdb;

create table products(id int,name varchar(20),price int);

insert into products values(1,"laptop",23000),(2,"Mouse",1000),(3,"pendrive",3000);

select * from products;

select min(price) as lowest_price from products;

select max(price) as Highest_price from products;

select sum(price) as total_price from products;

select avg(price) as average_price from products;

insert into products values(1,"laptop",300000);

select max(price),id from products group by id;

select min(price),id from products group by id;

select avg(price),id from products group by id;

select count(*) as count , id from products group by id;

select count(id) as count , id from products where price>20000;

select distinct(price) from products;

insert into products values(2,"cell",1000);
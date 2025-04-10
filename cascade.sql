use testdb;

create table customer(id int primary key,
name varchar(20));

create table orders(order_id int primary key,
customer_id int,
product_name varchar(20),
foreign key(customer_id) references customer(id)
on delete cascade);

insert into customer values(101,"Yuri"),(102,"keifer"),(103,"kalix"),(104,"jay"),(105,"ella");

insert into orders values(1,101,"bike"),(2,102,"dress"),(3,101,"dress"),(4,104,"laptop"),(5,105,"laptop"),(6,104,"dress"),(7,102,"scooty");

select * from customer;

select * from orders;

select name,product_name from customer as c inner join orders as o
on c.id = o.customer_id;

delete from customer where id=105;

select * from customer order by id;

select * from customer order by id desc;

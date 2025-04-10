use testdb;
create table students_info(id int primary key auto_increment,
name varchar(20));

insert into students_info(name) values("kavya"),("mani"),("sai"),("akash");

insert into students_info(name) values(Null);

select * from students_info;

select id, coalesce(name,"defalut") as name from students_info;


start transaction;

savepoint point;

insert into students_info(name) values("keifer");
insert into students_info(name) values("yuri");

rollback to point;

commit;
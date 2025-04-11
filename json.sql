use testdb;

create table users(id int,
profile json);

insert into users values(1,'{"name":"kavya","skills":["java","python"]}');

select * from users;

select json_extract(profile,"$.skills[0]") as fisrt_preferred_skill from users;

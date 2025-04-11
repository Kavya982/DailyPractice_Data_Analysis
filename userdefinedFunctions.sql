use testdb;
delimiter ??
create function rectangleArea(length float, width float)
returns float
deterministic
begin
return length*width;
end??

delimiter ;

select rectangleArea(2.2,1.2) as Area;


delimiter //
create function addNumber(a int,b int)
returns int
begin
return a+b;
end//
delimiter ;

select addNumber(1,2) as sum ;
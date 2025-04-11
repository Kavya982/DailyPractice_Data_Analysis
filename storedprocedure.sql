delimiter &&
create procedure retrievedata()
begin
select * from drinks;
end;
 &&
 
 call retrievedata();


delimiter ??
create procedure deletedata(in id_no int)
begin
select * from drinks where id = id_no ;
end;
??

call deletedata(2);


delimiter //
create procedure getDetailed(in id_no int , out name varchar(2))
begin
select name into name from drinks where id = id_no;
end;
//
delimiter ;

set @name = "kavya";

call getDetailed(3,@name);

select @name;
DELIMITER $$
drop procedure if exists print;
create procedure print(IN custname varchar(10),OUT salary varchar(10),OUT credits varchar(10) )
BEGIN
	select *from customer where name=custname;
END $$
DELIMITER ; 

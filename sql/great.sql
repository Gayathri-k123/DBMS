drop procedure if exists compare;
DELIMITER $$
create procedure  compare(IN a int,IN b int,IN c int);
BEGIN
	declare result varchar(100);
	if a>b and a>c then
		set result=concat(a,"is greater");
	elseif b>c and b>a then
		set result=concat(b,"is greater");
	else
		set result=concat(c,"is greater");
	end if;
END $$
DELIMITER ;

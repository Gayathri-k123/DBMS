drop procedure if exists print;
DELIMITER $$
create procedure print(IN a int,IN b int)
BEGIN
	DECLARE counter int;
	DECLARE result varchar(100);
	set counter =LEAST(a,b);
	set result=" ";
	num1: loop
		set counter=counter+1;
		IF counter >= GREATEST(a,b) then
			leave num1;
		end if;
		set result =concat(result,counter,' ');
	END LOOP;
	select result as numberseries;
END $$
DELIMITER ;

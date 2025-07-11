DELIMITER $$
drop procedure if exists calcu;
CREATE PROCEDURE calcu(INOUT list VARCHAR(500))
BEGIN 
	DECLARE emid varchar(10);
	DECLARE finished int;
	DECLARE cur CURSOR FOR SELECT email from Employee;
	DECLARE CONTINUE HANDLER FOR NOT FOUND set finished=1;
	OPEN cur;
	
	readi:LOOP
		FETCH cur into list;
		if finished=1 then
			LEAVE readi;
		END IF ;
		fetch cur into emid;
		set list=CONCAT(list,';',emid);
	END LOOP readi;
	close cur;
END $$
DELIMITER ;

DELIMITER $$
drop trigger if exists after_del;
CREATE TRIGGER ater_del AFTER UPDATE ON empl FOR EACH ROW 
BEGIN
	INSERT INTO emp (action,employeeNumber,name,changedat) values ('update',OLD.empno,OLD.empname,NOW());
END $$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER after_del AFTER DELETE ON Employee
FOR EACH ROW
BEGIN
	INSERT INTO employee_history(empid,fname,lname,jobid,hdate,dateofdeletion) values (OLD.id,OLD.finame,OLD.liname,OLD.jid,OLD.hdate,NOW());
END $$
DELIMITER ;

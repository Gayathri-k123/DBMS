drop  procedure if exists great;
DELIMITER $$
CREATE PROCEDURE great (IN num1 int,IN num2 int,IN num3 int,OUT greatest int)
BEGIN
	IF num1>=num2 and num1>=num3 THEN
		set greatest=num1;
	ELSEIF num2>=num3 and num2>=num1 THEN
		set greatest=num2;
	ELSE
		set greatest=num3;
	END IF;
END $$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS SumSeries;

CREATE PROCEDURE SumSeries(IN N INT, OUT total INT)
BEGIN
    DECLARE counter INT DEFAULT 1;
    SET total = 0;

    WHILE counter <= N DO
        SET total = total + counter;
        SET counter = counter + 1;
    END WHILE;

END $$
DELIMITER ;




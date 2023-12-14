use k21ut;

DELIMITER $$
CREATE FUNCTION Func_Cube
(
Num INT
)
RETURNS INT
DETERMINISTIC
BEGIN
DECLARE TotalCube INT;
SET TotalCube = Num * Num * Num;
RETURN TotalCube;
END$$
DELIMITER ;

select Func_Cube(2);

DELIMITER $$
CREATE FUNCTION Func_Calculate_Age
(
Age date
)
RETURNS INT DETERMINISTIC
BEGIN
DECLARE TodayDate DATE;
SELECT CURRENT_DATE() INTO TodayDate;
RETURN YEAR(TodayDate) - YEAR(Age);
END$$
DELIMITER ;

SELECT Func_Calculate_Age(STR_TO_DATE('1999-02-29', '%Y-%m-%d'));
SELECT Func_Calculate_Age(STR_TO_DATE('1999-02-29', '%Y-%m-%d'))
as age;
SET sql_mode='ALLOW_INVALID_DATES';
SELECT Func_Calculate_Age('1999-02-29');

CREATE TABLE Employee
(
EmployeeId INT PRIMARY KEY,
Name VARCHAR(50),
Salary INT,
DOB Date
);
-- Populate Employee table
INSERT INTO Employee(EmployeeId, Name, Salary, DOB)
VALUES(1001, 'Pranaya', 10000, '1988-02-29');
INSERT INTO Employee(EmployeeId, Name, Salary, DOB)
VALUES(1002, 'Anurag', 20000, '1992-06-22');
INSERT INTO Employee(EmployeeId, Name, Salary, DOB)
VALUES(1003, 'Sambit', 30000, '1978-04-12');

CREATE FUNCTION GetFULLSalarity (@name VARCHAR(50))
RETURNS NUMERIC(10)
BEGIN
DECLARE @Summ NUMERIC(10)
SELECT @Summ = Employee.Salarity*12
FROM Employee
WHERE Employee.[Full name]=@name;
RETURN @Summ
END
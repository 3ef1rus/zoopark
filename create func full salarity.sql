CREATE FUNCTION GetFullSalarity (@name VARCHAR(50))
RETURNS NUMERIC(10)
BEGIN
DECLARE @FullSalarity NUMERIC(10)
SELECT @FullSalarity = Employee.[Salarity]*12
FROM Employee
WHERE Employee.[Full name]=@name;
RETURN @FullSalarity
END
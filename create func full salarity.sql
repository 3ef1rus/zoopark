
CREATE FUNCTION GetFullSalarity (@name VARCHAR(100))
RETURNS numeric(10)
BEGIN
DECLARE @FullSalarity numeric(10)
SELECT @FullSalarity = Employee.[Salarity]
FROM Employee
WHERE Employee.[Full name]=@name;
RETURN @FullSalarity
END
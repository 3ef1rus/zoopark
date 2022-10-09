CREATE FUNCTION GetFullSalarity (@name VARCHAR(100))
RETURNS VARCHAR(100)
BEGIN
DECLARE @FullSalarity VARCHAR(100)
SELECT @FullSalarity = concat(Employee.[Salarity]*12,'$')
FROM Employee
WHERE Employee.[Full name]=@name;
RETURN @FullSalarity
END
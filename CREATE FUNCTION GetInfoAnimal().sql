CREATE FUNCTION GetInfoAnimal()
RETURNS @info TABLE
(passportAnimaID INT PRIMARY KEY,TnameAndDate VARCHAR(100))
AS
BEGIN
INSERT @info
SELECT PassportAnimal.passportAnimaID,PassportAnimal.[Name]+'-'+Types.[Name type]+'-'+Animal.[Date join]
FROM PassportAnimal,Animal,Types
WHERE PassportAnimal.typeID=Types.typeID and PassportAnimal.passportAnimaID=Animal.passportAnimaID
RETURN
END
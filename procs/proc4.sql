USE zoopark;
GO
CREATE PROCEDURE FullAnimal AS
SELECT PassportAnimal.Name,Types.[Name type],Cells.[Number cell],Animal.Hight,Animal.Weigth,PassportAnimal.Sex,PassportAnimal.[Data Birth],Animal.[Date join]
FROM Animal,PassportAnimal,Types,Cells
WHERE Animal.passportAnimaID=PassportAnimal.passportAnimaID AND
PassportAnimal.typeID=Types.typeID AND
Animal.cellID=Cells.cellID
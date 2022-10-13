USE zoopark;
GO
CREATE PROCEDURE NeedWarm AS
SELECT Animal.Warm,Types.[Name type],[Animal name]=PassportAnimal.Name 
FROM Animal,Types,PassportAnimal
WHERE Types.[Name type]='Макаки резусы' AND
 Types.typeID=PassportAnimal.typeID AND
  PassportAnimal.passportAnimaID=Animal.passportAnimaID
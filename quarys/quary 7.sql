use zoopark
SELECT [Animal name]=PassportAnimal.Name ,Types.[Name type] , Animal.[Move]
FROM Animal,Types,PassportAnimal
WHERE  Animal.[Move]='Yes' AND
Animal.passportAnimaID=PassportAnimal.passportAnimaID AND
PassportAnimal.typeID=Types.[typeID]

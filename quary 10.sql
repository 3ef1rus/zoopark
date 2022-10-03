use zoopark
SELECT [Animal name]=PassportAnimal.Name ,Types.[Name type],FoodTypes.[Food type] FROM Animal,Types,PassportAnimal,FoodTypes
WHERE FoodTypes.foodTypeID=Types.foodTypeID AND
    Types.typeID=PassportAnimal.passportAnimaID AND
    PassportAnimal.passportAnimaID=Animal.passportAnimaID


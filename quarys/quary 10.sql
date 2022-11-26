use zoopark
SELECT Types.[Name type],FoodTypes.[Food type] 
FROM Types,FoodTypes
WHERE FoodTypes.foodTypeID=Types.foodTypeID
GO

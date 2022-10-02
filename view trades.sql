use zoopark
SELECT [Number exchange],[Whom give],[Whom take],[Date exchange],ZooparkForTrade.Name FROM Exchanges , ZooparkForTrade
WHERE Exchanges.zooparkID=ZooparkForTrade.zooparkID
GO
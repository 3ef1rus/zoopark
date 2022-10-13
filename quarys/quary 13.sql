use zoopark
SELECT Exchanges.[Number exchange],Exchanges.[Date exchange],
Exchanges.[Whom give],Exchanges.[Whom take] ,
[Zoopark exchange]=ZooparkForTrade.Name 
FROM ZooparkForTrade,Exchanges
WHERE Exchanges.zooparkID=ZooparkForTrade.zooparkID
GO
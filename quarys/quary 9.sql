use zoopark
SELECT Suppliers.Amount,Feeds.Name 
FROM Suppliers,Feeds
WHERE Suppliers.Name='Зоопарк Радость' AND 
Suppliers.[supplierID]=Feeds.supplierID
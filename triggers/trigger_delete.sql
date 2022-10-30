use zoopark
go
CREATE TRIGGER RemoveInfo
ON Employee
AFTER DELETE
AS
INSERT INTO EmployeeHistory (Operation)
SELECT 'Удален рабочий , его имя : ' + [Full name] + ' , а зарплата : ' + Salarity +'$'
FROM DELETED
    

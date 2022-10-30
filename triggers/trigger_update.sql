use zoopark
go
CREATE TRIGGER UpdateInfo
ON Employee
AFTER UPDATE
AS
INSERT INTO EmployeeHistory (Operation)
SELECT 'Изменен рабочий , его имя : ' + [Full name] + ' , а зарплата : ' + Salarity +'$'
FROM INSERTED
    

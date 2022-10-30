use zoopark
go
CREATE TRIGGER AddInfo
ON Employee
AFTER INSERT
AS
INSERT INTO EmployeeHistory (Operation)
SELECT 'Добавлен рабочий , его имя : ' + [Full name] + ' , а зарплата : ' + Salarity +'$'
FROM INSERTED
    

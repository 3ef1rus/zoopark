use zoopark;
go

CREATE TRIGGER AddInfo
ON Employee
AFTER INSERT
AS
INSERT INTO EmployeeHistory (ProductId, Operation)
SELECT Id, 'Добавлен рабочий , его имя' + Employee.[Full name] + ' зарплата ' + Employee.Salarity
FROM INSERTED
    

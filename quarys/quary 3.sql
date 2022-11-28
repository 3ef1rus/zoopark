use zoopark
SELECT Employee.[Full name],[Job]=Jobs.Name,Access.[Access],Types.[Name type]
FROM Employee,Types,Jobs,Access
WHERE ( Employee.[employeeID]=Access.[employeeID] AND Types.[typeID]=Access.[typeID]) 
and Jobs.jobID=Employee.jobID 
AND Types.[Name type]='Амурский тигр'
GO
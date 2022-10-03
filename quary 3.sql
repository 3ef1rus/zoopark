use zoopark
SELECT Employee.[Full name],[Job]=Jobs.Name,Access.[Access],[Animal name]=PassportAnimal.Name
FROM Employee,Types,Jobs,Access,PassportAnimal
WHERE 
    Jobs.jobID=Employee.jobID AND
    Employee.[employeeID]=Access.[employeeID] AND
    Access.[typeID]=Types.[typeID] AND
    Types.[typeID] = PassportAnimal.[typeID] AND
    PassportAnimal.Name='Стимми'
GO
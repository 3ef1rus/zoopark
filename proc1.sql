USE zoopark;
GO
CREATE PROCEDURE FullEmployee AS
SELECT Employee.[Full name],[Job]=Jobs.Name,Employee.Experience,Employee.Sex,
Employee.Age,Employee.Salarity
from Employee,Jobs
WHERE Jobs.jobID=Employee.jobID
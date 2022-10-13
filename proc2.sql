USE zoopark;
GO
CREATE PROCEDURE WhoRes AS
SELECT Employee.[Full name], PassportAnimal.Name, Responsibility.[Date start],
    Responsibility.[Date end]
from Employee, PassportAnimal, Responsibility, ResponsibilityList
WHERE 
    ResponsibilityList.employeeID=Employee.employeeID and
    Responsibility.responsibilityID=ResponsibilityList.responsibilityID and
    Responsibility.passportAnimaID=PassportAnimal.passportAnimaID AND
    PassportAnimal.Name='Абрам'
use zoopark
SELECT Employee.[Full name],Jobs.Name, Types.[Name type]
from Employee, Types , InteractionFamilyList,Jobs
WHERE  Jobs.jobID=Employee.jobID and
 Employee.employeeID=InteractionFamilyList.employeeID and
  Types.typeID=InteractionFamilyList.typeID and 
  Types.[Name type]='Сенегальский лев'
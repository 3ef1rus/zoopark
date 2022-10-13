CREATE FUNCTION GetEmployee()
RETURNS TABLE
AS
RETURN
(
SELECT Employee.[Full name],Jobs.Name
FROM Employee,Jobs
WHERE jobs.jobID=Employee.jobID
)
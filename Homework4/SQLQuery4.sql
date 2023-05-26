USE SEDCHome
GO

DECLARE @FirstName NVARCHAR(100)
SET @FirstName = 'Antonio'

SELECT *
FROM Student
WHERE FirstName = @FirstName
GO
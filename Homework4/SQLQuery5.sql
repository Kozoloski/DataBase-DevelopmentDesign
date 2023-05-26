USE SEDCHome
GO

DECLARE @FemaleStudents TABLE
(StudentID INT,FirstName NVARCHAR(50),DateOfBirth DATE)

INSERT INTO @FemaleStudents
SELECT ID,FirstName,DateOfBirth
FROM Student
WHERE Gender = 'F'

SELECT *
FROM @FemaleStudents
GO
USE SEDCHome
GO

CREATE TABLE #MaleStudents
(LastName NVARCHAR(50),EnrolledDate DATE)

INSERT INTO #MaleStudents
SELECT Lastname, EnrolledDate
FROM Student
WHERE FirstName LIKE 'A%' AND Gender = 'M'

SELECT *
FROM #MaleStudents
WHERE LEN(LastName) = 7
GO
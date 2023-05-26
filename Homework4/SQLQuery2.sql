USE SEDCHome
GO

ALTER VIEW vv_StudentGrades
AS
SELECT s.[FirstName], s.[LastName], COUNT(Grade) AS Total
FROM Student s
INNER JOIN Grade g
ON g.StudentID = s.ID
GROUP BY s.[FirstName], s.[LastName]
GO

SELECT * 
FROM vv_StudentGrades
GO
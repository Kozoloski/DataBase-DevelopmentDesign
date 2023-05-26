USE SEDCHome
GO

CREATE VIEW vv_StudentGrades
AS
SELECT StudentID, COUNT(Grade) AS Total
FROM Grade g
GROUP BY StudentID
GO

SELECT *
FROM vv_StudentGrades
GO
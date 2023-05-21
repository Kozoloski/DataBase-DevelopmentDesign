USE SEDCHome

SELECT TeacherID, COUNT(*) AS Total
FROM dbo.Grade
GROUP BY TeacherID

SELECT TeacherID, COUNT(*) AS Total
FROM dbo.Grade
WHERE StudentID <100
GROUP BY TeacherID

SELECT StudentID, MAX(Grade) AS MaximalGrade, AVG(Grade) AS AverageGrade
FROM Grade
GROUP BY StudentID

SELECT TeacherID, COUNT(*) AS Total
FROM dbo.Grade
GROUP BY TeacherID
HAVING COUNT(Grade) >200

SELECT StudentID, COUNT(Grade) AS GradeCount, MAX(Grade) AS MaxGrade, AVG(Grade) AS AvgGrade
FROM dbo.Grade
GROUP BY StudentID
HAVING MAX(Grade) = AVG(Grade)

SELECT s.FirstName, s.LastName, COUNT(g.Grade) AS GradeCount, MAX(g.Grade) AS MaxGrade, AVG(g.Grade) AS AvgGrade
FROM Student AS s
JOIN Grade AS g ON s.ID = g.StudentID
GROUP BY s.ID, s.FirstName, s.LastName
HAVING MAX(g.Grade) = AVG(g.Grade);
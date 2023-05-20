USE [SEDCHome]

SELECT *
FROM Student
WHERE FirstName = 'Antonio'

SELECT *
FROM Student
WHERE DateOfBirth > '01.01.1999'

SELECT *
FROM Student
WHERE LastName LIKE 'J%' AND EnrolledDate >= '01.01.1998' AND EnrolledDate < '01.02.1998'

SELECT *
FROM Student
ORDER BY FirstName

SELECT LastName
FROM Teacher
UNION
SELECT LastName
FROM Student


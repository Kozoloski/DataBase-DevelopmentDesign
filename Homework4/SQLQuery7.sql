USE SEDCHome
GO

SELECT *
FROM Teacher
WHERE LEN(FirstName) < 5
  AND LEFT(FirstName, 3) = LEFT(LastName, 3);
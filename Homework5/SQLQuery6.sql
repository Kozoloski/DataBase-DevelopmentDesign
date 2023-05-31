SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE CreateGrade

	@StudentID INT,
	@CourseID INT,
	@TeacherID INT,
	@Grade INT,
	@CreatedDate DATE,
	@Comment NVARCHAR(MAX) NULL

AS
BEGIN

	SET NOCOUNT ON;

	INSERT INTO Grade
	VALUES (@StudentID, @CourseID, @TeacherID, @Grade, @CreatedDate, @Comment)

	SELECT COUNT(*) AS TotalNumberOfGradesForStudent
	FROM Grade
	WHERE StudentID = @StudentID

	SELECT MAX(Grade) AS MaxGrade
	FROM Grade
	WHERE TeacherID = @TeacherID;

END
GO

EXEC CreateGrade @StudentID = 197, @CourseID = 21, @TeacherID = 62, 
@Grade = 10, @CreatedDate = '2010-02-28', @Comment = 'Dobar'
GO
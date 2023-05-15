USE SEDCACADEMYDB

CREATE TABLE Students(
Id int NOT NULL,
FirstName nvarchar(50) NOT NULL,
LastName nvarchar(50) NOT NULL,
DateOFBirth date NOT NULL,
EnrolledDate date NOT NULL,
Gender nchar(1) NOT NULL,
NationIdNumber nvarchar(20) NULL,
StudentCardNumber nvarchar(20) NULL,
)

CREATE TABLE Teachers(
Id int NOT NULL,
FirstName nvarchar(50) NOT NULL,
LastName nvarchar(50) NOT NULL,
DateOFBirth date NOT NULL,
AcademicRank nvarchar(20) NULL,
HireDate date NOT NULL,
)

CREATE TABLE Grades(
Id int NOT NULL,
StudentId int NOT NULL,
CourseId int NOT NULL,
TeacherId int NOT NULL,
Grade nchar(1) NOT NULL,
Comment varchar(100) NOT NULL,
CreatedDate date NOT NULL,
)

CREATE TABLE Course(
Id int NOT NULL,
Name nvarchar(50) NOT NULL,
Credit int NULL,
AcademicYear date NOT NULL,
Semester nvarchar(2) NULL,
)

CREATE TABLE GradeDetails (
Id int NOT NULL,
GradeId int NOT NULL,
AchievementTypeId int NOT NULL,
AchievementPoints int NOT NULL,
AchievementMaxPoints int NOT NULL,
AchievementDatePoints date NOT NULL,
)

CREATE TABLE AchievementType (
Id int NOT NULL,
Name nvarchar(50) NOT NULL,
Description varchar(100) NOT NULL,
ParticipationRate int NOT NULL,
)
CREATE DATABASE [SEDCHome]

USE [SEDCHome]

CREATE TABLE Student(
ID int NOT NULL,
FirstName nvarchar(50) NOT NULL,
LastName nvarchar(50) NOT NULL,
DateOfBirth date NOT NULL,
EnrolledDate date NOT NULL,
Gender nchar(1) NOT NULL,
NationalIDNumber nvarchar(20) NULL,
StudentCardNumber nvarchar(20) NULL,
)

CREATE TABLE Teacher(
ID int NOT NULL,
FirstName nvarchar(50) NOT NULL,
LastName nvarchar(50) NOT NULL,
DateOfBirth date NOT NULL,
AcademicRank nvarchar(50) NULL,
HireDate date NOT NULL,
)

CREATE TABLE Grade(
ID int NOT NULL,
StudentID int NOT NULL,
CourseID int NOT NULL,
TeacherID int NOT NULL,
Grade int NOT NULL,
Comment nvarchar(MAX) NULL,
CreatedDate date NOT NULL,
)

CREATE TABLE Course(
ID int NOT NULL,
Name nvarchar(50) NOT NULL,
Credit int NULL,
AcademicYear int NOT NULL,
Semester int NOT NULL,
)

CREATE TABLE GradeDetails (
ID int NOT NULL,
GradeID int NOT NULL,
AchievementTypeID int NOT NULL,
AchievementPoints int NOT NULL,
AchievementMaxPoints int NOT NULL,
AchievementDate date NOT NULL,
)

CREATE TABLE AchievementType (
ID int NOT NULL,
Name nvarchar(50) NOT NULL,
Description nvarchar(MAX) NULL,
ParticipationRate int NOT NULL,
)


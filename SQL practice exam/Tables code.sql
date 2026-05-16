create database exam;

use exam;



CREATE TABLE Teachers (
    TeacherID INT PRIMARY KEY IDENTITY(1,1),
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Subject VARCHAR(50)
);



CREATE TABLE Classes (
    ClassID INT PRIMARY KEY IDENTITY(1,1),
    ClassName VARCHAR(50),
    TeacherID int not null
	CONSTRAINT FK_Teachers FOREIGN KEY (TeacherID)
	REFERENCES Teachers(TeacherID)
);




CREATE TABLE Students (
    StudentID INT PRIMARY KEY IDENTITY(1,1),
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
	ClassID int not null
	CONSTRAINT FK_Classes FOREIGN KEY (ClassID)
	REFERENCES Classes(ClassID),
    BirthDate DATE
);





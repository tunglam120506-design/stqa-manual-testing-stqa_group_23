use exam;

--Write a SQL query to display a list of all students with class name and teacher in charge
select  s.FirstName, s.LastName, c.ClassName,t.FirstName as Teacher_First_Name, t.LastName as Teacher_Last_Name from Students s
INNER JOIN Classes c on s.ClassID = c.ClassID
INNER JOIN Teachers t on c.TeacherID = t.TeacherID;

--Write a SQL query to display students with birth dates from 2000 onwards.
select * from Students where YEAR(BirthDate) >= 2000;

--Write an SQL query to display all students with class name and teacher in charge, sorted by student name
select s.FirstName, s.LastName, c.ClassName, t.FirstName as Teacher_First_Name, t.LastName as Teacher_Last_Name from Students s
INNER JOIN Classes c on s.ClassID = c.ClassID
INNER JOIN Teachers t on c.TeacherID = t.TeacherID
ORDER BY s.LastName;

--Update the name of the student whose StudentID is 3 to "John Doe".
UPDATE Students SET FirstName = 'John', LastName = 'Doe' where StudentID = 3;

--Delete students whose StudentID is 7
DELETE from Students where StudentID = 7;

--Create a stored procedure named GetStudentsByClassAndSubject that takes ClassID and Subject, and returns a list of students belonging to that class and subject.
CREATE PROCEDURE GetStudentsByClassAndSubject
    @ClassID int,
    @Subject varchar(50)
as
BEGIN
    select s.FirstName, s.LastName
    from Students s
    INNER JOIN Classes c on s.ClassID = c.ClassID
    INNER JOIN Teachers t on c.TeacherID = t.TeacherID
    where s.ClassID = @ClassID AND t.Subject = @Subject;
END;


--Create a view named StudentsWithClassAndTeacher that displays information about students along with the class name and teacher in charge.
CREATE VIEW StudentsWithClassAndTeacher as
select s.FirstName, s.LastName, c.ClassName, t.FirstName as TeacherFirstName, t.LastName as TeacherLastName
from Students s
INNER JOIN Classes c on s.ClassID = c.ClassID
INNER JOIN Teachers t on c.TeacherID = t.TeacherID;

--Indexes
CREATE INDEX IX_ClassID on Students(ClassID);
CREATE INDEX IX_TeacherID on Classes(TeacherID);


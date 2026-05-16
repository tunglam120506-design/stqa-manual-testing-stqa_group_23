use exam;



-- Adding classes
INSERT INTO Classes (ClassID, ClassName, TeacherID) VALUES
(1, 'Mathematics', 1),
(2, 'Physics', 2),
(3, 'English', 3),
(4, 'History', 4),
(5, 'Biology', 5);

-- Adding students
INSERT INTO Students (StudentID, FirstName, LastName, ClassID, BirthDate) VALUES
(1, 'Van A', 'Nguyen', 1, '2002-05-15'),
(2, 'Viet A', 'Hoang', 2, '2001-08-22'),
(3, 'Hai D', 'Trinh', 3, '2000-11-30'),
(4, 'Duc A', 'Le', 4, '2003-02-10'),
(5, 'Viet H', 'Trung', 5, '2002-04-05'),
(6, 'Khai N', 'Truc', 1, '2001-07-20'),
(7, 'Viet T', 'Ngo', 2, '1999-10-12'),
(8, 'Tan N', 'Do', 3, '2000-03-25'),
(9, 'Nhat M', 'Quang', 4, '2002-09-18'),
(10, 'Vu T', 'Hiep', 5, '2001-12-08');

-- Adding teachers
INSERT INTO Teachers (TeacherID, FirstName, LastName, Subject) VALUES
(1, 'Tri V', 'Nguyen', 'Mathematics'),
(2, 'Xuan H', 'Nguyen', 'Physics'),
(3, 'Manh H', 'Le', 'English'),
(4, 'Manh V', 'An', 'History'),
(5, 'Van A', 'Trung', 'Biology');



CREATE TABLE Students (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(70) NOT NULL,
    age INTEGER NOT NULL
);

CREATE TABLE Courses (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    course_title VARCHAR(50) NOT NULL
);

CREATE TABLE StudentsCourses (
    student_id INTEGER NOT NULL,
    course_id  INTEGER NOT NULL,
    FOREIGN KEY (student_id) REFERENCES Students(id),
    FOREIGN KEY (course_id) REFERENCES Courses(id)
);

INSERT INTO Students
    (name, age)
VALUES
    ('Jen Hacker', 22),
    ('Joe Maker', 37),
    ('Maya Programmer', 18),
    ('Ada Lovelace', 25)
;

INSERT INTO Courses
    (course_title)
VALUES
    ('Computer Science'),
    ('Writing'),
    ('Literature'),
    ('World History'),
    ('Gender Studies'),
    ('Chemistry')
;

INSERT INTO StudentsCourses
    (student_id, course_id)
VALUES
    (1, 1),
    (1, 3),
    (1, 5),
    (2, 1),
    (2, 4),
    (2, 5),
    (2, 7),
    (3, 1),
    (3, 2),
    (3, 6),
    (4, 1),
    (4, 3),
    (4, 6)
;

/* Queries */

/*
# TODO: Write a 3-table join on 
# Students - StudentsCourses - Courses
# to show a table of:
# Student Name : Course Name

*/

SELECT * FROM Students;

SELECT * FROM Courses;

SELECT * FROM StudentsCourses;


SELECT Students.name, Courses.course_title FROM StudentsCourses
JOIN Students ON Students.id = StudentsCourses.student_id
JOIN Courses ON Courses.id = StudentsCourses.course_id;

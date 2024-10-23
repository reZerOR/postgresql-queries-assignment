-- Active: 1729088997679@@127.0.0.1@5432@university_db
CREATE DATABASE university_db

-- student table 
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    age INTEGER NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    frontend_mark INTEGER,
    backend_mark INTEGER,
    status VARCHAR(50)
)

-- courses tabel
CREATE Table courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    credits INTEGER NOT NULL
)

-- enrollment table
CREATE TABLE enrollment(
    enrollment_id SERIAL PRIMARY KEY,
    student_id INTEGER REFERENCES students(student_id),
    course_id INTEGER REFERENCES courses(course_id)
)

-- data inserting into students table
INSERT INTO students VALUES
(1, 'Sameer', 21, 'sameer@example.com', 48, 60, NULL),
(2, 'Zoya', 23, 'zoya@example.com', 52, 58, NULL),
(3, 'Nabil', 22, 'nabil@example.com', 37, 46, NULL),
(4, 'Rafi', 24, 'rafi@example.com', 41, 40, NULL),
(5, 'Sophia', 22, 'sophia@example.com', 50, 52, NULL),
(6, 'Hasan', 23, 'hasan@gmail.com', 43, 39, NULL);

-- data inserting into courses table
INSERT INTO courses VALUES
(1, 'Next.js', 3),
(2, 'React.js', 4),
(3, 'Databases', 3),
(4, 'Prisma', 3);


INSERT INTO enrollment VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 3, 2);


-- query 1 insert a new student
INSERT INTO students
VALUES (7, 'Dummy', 25, 'dummey.joe@example.com', 55, 58, NULL)

-- query 2 find student with next.js course
SELECT student_name FROM enrollment as e
JOIN students as s on s.student_id = e.student_id
JOIN courses as c on c.course_id = e.course_id
WHERE course_name = 'Next.js'

-- query 3 updating higest mark status to awarded
UPDATE students
SET status = 'Awarded'
WHERE (frontend_mark + backend_mark) = (
    SELECT MAX(frontend_mark + backend_mark) FROM students
)

-- query 4 deleting courses if there are no students
DELETE FROM courses
WHERE course_id NOT IN (SELECT course_id from enrollment)

-- query 5 retrive all student limit 2 from 3rd
SELECT student_name FROM students
LIMIT 2 OFFSET 2

-- query 6 retrive courses with student numbers
SELECT course_name, count(student_id) as students_enrolled
FROM enrollment as e
JOIN courses as c on c.course_id = e.course_id
GROUP BY course_name

-- query 7 display avarge age of all students
SELECT ROUND(AVG(age), 2) as average_age FROM students

-- query 8
SELECT student_name FROM students
WHERE email LIKE '%example.com'
-- DROP TABLE IF EXISTS students;
-- CREATE TABLE students (
--     id INTEGER PRIMARY KEY,
--     name TEXT,
--     age INTEGER,
--     subjects TEXT,
--     marks INTEGER
-- );

-- INSERT INTO students VALUES
-- (1, "lavanya","22","telugu",90),
-- (2, 'Ravi', 23, 'Hindi', 85),
-- (3, 'Priya', 21, 'English', 95),
-- (4, 'Lilly', 22, 'Maths', 70),
-- (5, 'Santhu', 23, 'PS', 60),
-- (6, 'Bindhu', 21, 'NS', 50);



-- UPDATE students
-- SET marks = 98
-- WHERE id = 1;

-- DELETE  FROM students
-- WHERE id = 3;

-- SELECT age * 2 FROM students;

-- SElect marks  * 5 FROM students;

-- SELECT subjects from students;

-- SELECT * FROM students
-- ORDER BY marks ASC;

-- SELECT * FROM students
-- ORDER BY marks DESC;

-- SELECT * FROM students
-- WHERE marks > 80; 

-- SELECT * FROM students
-- ORDER BY marks DESC
-- LIMIT 3;

-- SELECT SUM(marks)
-- FROM students;

-- SELECT MIN(marks)
-- FROM students;

-- select * from students;

-- SELECT MAX(marks)
-- FROM students;


-- SELECT Count(*) FROM students;

-- SELECT DISTINCT  name from students;



-- SELECT * FROM students WHERE age > 18 AND marks > 70;


-- SELECT *  From students LIMIT 5 ;


-- CREATE TABLE courses_new (
--     student_id INTEGER,
--     course_name TEXT
-- );



-- SELECT * FROM courses_new;


-- SELECT name
-- FROM sqlite_master
-- WHERE type = 'table';

-- SELECT name FROM sqlite_master WHERE type = 'table';

-- SELECT name FROM sqlite_master
-- WHERE type = 'table';

-- SELECT 1;


CREATE TABLE movies (
    mark_id INTEGER PRIMARY KEY,
    student_id INTEGER,
    subject TEXT,
    marks INTEGER,
    FOREIGN KEY (student_id)
    REFERENCES students(student_id)
);

SELECT * FROM Movies;














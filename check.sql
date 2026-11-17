
-- CREATE TABLE IF NOT EXISTS employees (
--     emp_id INTEGER PRIMARY KEY,
--     emp_name TEXT,
--     age INTEGER,
--     salary INTEGER
-- );


-- INSERT INTO employees VALUES
-- (1, 'Lavanya', 22, 20000),
-- (2, 'Ravi', 24, 25000),
-- (3, 'Priya', 23, 30000);


-- INSERT INTO employees VALUES
-- (4, 'Lilly', 22, 45000),
-- (5, 'Santhu', 23, 60000),
-- (6, 'Bindhu', 21, 50000);


-- SELECT * FROM employees;

-- DROP Employees TABLE;

-- DROP TABLE employees;

-- CREATE TABLE IF NOT EXISTS join_students (
--     student_id INTEGER PRIMARY KEY,
--     student_name TEXT
-- );

-- CREATE TABLE IF NOT EXISTS join_courses (
--     course_id INTEGER PRIMARY KEY,
--     student_id INTEGER,
--     course_name TEXT
-- );

-- INSERT OR IGNORE INTO join_students VALUES
-- (1, 'Lavanya'),
-- (2, 'Ravi'),
-- (3, 'Priya'),
-- (4, 'Kiran');

-- INSERT OR IGNORE INTO join_courses VALUES
-- (101, 1, 'Python'),
-- (102, 2, 'SQL'),
-- (103, 3, 'Java'),
-- (104, 1, 'Flask');

-- SELECT students.name, courses.course
-- FROM students
-- INNER JOIN courses
-- ON students.id = courses.id;

-- CREATE TABLE IF NOT EXISTS students2 (
--     id INTEGER,
--     name TEXT
-- );

-- CREATE TABLE IF NOT EXISTS courses2 (
--     id INTEGER,
--     course_name TEXT
-- );

-- INSERT INTO students2 VALUES (1, 'Lavanya');
-- INSERT INTO students2 VALUES (2, 'Ravi');

-- INSERT INTO courses2 VALUES (1, 'Python');
-- INSERT INTO courses2 VALUES (2, 'SQL');

-- SELECT students2.name, courses2.course_name
-- FROM students2
-- INNER JOIN courses2
-- ON students2.id = courses2.id;

-- SELECT students2.name, courses2.course_name
-- FROM students2
-- LEFT JOIN courses2
-- ON students2.id = courses2.id;


-- INSERT INTO students2 VALUES (3, 'Priya');

-- INSERT INTO coorses VALUES (3, 'java');

-- SELECT DISTINCT
--     students2.name,
--     courses2.course_name
-- FROM students2
-- LEFT JOIN courses2
-- ON students2.id = courses2.id;



-- CREATE TABLE orders (
--     order_id INTEGER PRIMARY KEY,
--     customer_name TEXT,
--     city TEXT,
--     product TEXT,
--     amount INTEGER
-- );










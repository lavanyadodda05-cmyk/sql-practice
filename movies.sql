CREATE TABLE movies (
    id INTEGER PRIMARY KEY,
    title TEXT,
    director TEXT,
    year INTEGER
);

INSERT INTO movies VALUES
(1, 'Toy Story', 'John Lasseter', 1995),
(2, 'A Bug''s Life', 'John Lasseter', 1998),
(3, 'Toy Story 2', 'John Lasseter', 1999),
(4, 'Monsters, Inc.', 'Pete Docter', 2001),
(5, 'Finding Nemo', 'Andrew Stanton', 2003),
(6, 'The Incredibles', 'Brad Bird', 2004),
(7, 'Cars', 'John Lasseter', 2006),
(8, 'Ratatouille', 'Brad Bird', 2007),
(9, 'WALL-E', 'Andrew Stanton', 2008),
(10, 'Up', 'Pete Docter', 2009);

SELECT * FROM movies;



DELETE from movies
wHERE id = 4 AND id= 9;

SELECT title FROM MOVIES;

SELECT title,year FROM MOVIES;

SELECT title,year,director FROM MOVIES;

SELECT DISTINCT director FROM movies;

SELECT COUNT(*) FROM movies;

SELECT * FROM movies
LIMIT 5;

SELECT * FROM movies
WHERE year = 2000;

SELECT * FROM movies
WHERE year > 2000;

SELECT * FROM movies
WHERE year < 2000;

SELECT * FROM movies
WHERE director = 'John Lasseter';

SELECT * FROM movies
WHERE year > 2000 AND year < 2008;

SELECT * FROM movies
WHERE director = 'Pete Docter'
OR director = 'Brad Bird';


SELECT * FROM movies
WHERE director IN ('Pete Docter', 'Brad Bird');

SELECT * FROM movies
WHERE title LIKE '%e';

SELECT * FROM movies
WHERE title LIKE '%Story%';

SELECT * FROM movies
ORDER BY year ASC;

SELECT * FROM movies
ORDER BY year DESC;

SELECT MIN(year) FROM movies;

SELECT MAX(year) FROM movies;

SELECT AVG(year) FROM movies;

SELECT director, COUNT(*) AS total_movies
FROM movies
GROUP BY director
HAVING COUNT(*) > 2;

UPDATE movies
SET year = 2005
WHERE title = 'The Incredibles';

ALTER TABLE movies
ADD COLUMN rating REAL;

SELECT * FROM movies;

ALTER TABLE movies
RENAME COLUMN title TO movie_name;


SELECT * FROM movies;

ALTER TABLE movies
RENAME TO films;

ALTER TABLE films
RENAME TO movies;

SELECT * FROM  movies;

SELECT director FROM movies
WHERE year < 2000

UNION

SELECT director FROM movies
WHERE year >= 2000;

SELECT director FROM movies
WHERE year < 2000

UNION ALL

SELECT director FROM movies
WHERE year >= 2000;

SELECT UPPER(movie_name) FROM movies;

SELECT LOWER(movie_name) FROM movies;

SELECT movie_name, LENGTH(movie_name)
FROM movies;

# primary key
CREATE TABLE movie_awards (
    award_id INTEGER PRIMARY KEY,
    movie_id INTEGER,
    award_name TEXT,
    FOREIGN KEY(movie_id) REFERENCES movies(id)
);

INSERT INTO movie_awards VALUES
(1, 1, 'Best Animation'),
(2, 4, 'Best Sound'),
(3, 5, 'Best Animated Feature'),
(4, 6, 'Best Visual Effects');

SELECT * From movie_awards;

# matching records from both tables

SELECT movies.movie_name, movie_awards.award_name
FROM movies
INNER JOIN movie_awards
ON movies.id = movie_awards.movie_id;

#Left join 
SELECT movies.movie_name, movie_awards.award_name
FROM movies
LEFT JOIN movie_awards
ON movies.id = movie_awards.movie_id;


SELECT movies.movie_name, movie_awards.award_name
FROM movies
CROSS JOIN movie_awards;

SELECT A.movie_name, B.movie_name
FROM movies A
JOIN movies B
ON A.director = B.director
AND A.id < B.id;

select * from movies;
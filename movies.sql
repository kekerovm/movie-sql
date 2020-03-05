-- // Normal Mode
-- #1. Select all columns and rows from the movies table
SELECT *
FROM movieshw.movies;
-- #2. Select only the title and id of the first 10 rows
SELECT id, title
FROM movies
LIMIT
10;
-- #3. Find the movie with the id of 485
SELECT *
FROM movies
WHERE id=485;
-- #4. Find the id (only that column) of the movie Made in America (1993)
SELECT id
FROM movieshw.movies
WHERE title like"%Made in America%";
-- #5. Find the first 10 sorted alphabetically
SELECT *
FROM movieshw.movies
ORDER by title
LIMIT 10;
-- #6. Find all movies from 2002
SELECT * FROM movieshw
.movies
WHERE title LIKE '%2002%';
-- #7. Find out what year the Godfather came out
SELECT *
FROM movieshw.movies
WHERE title LIKE '%Godfather, the%';
-- #8. Without using joins find all the comedies
SELECT *
FROM movieshw.movies
WHERE genres LIKE '%comedy%';
-- #9. Find all comedies in the year 2000
SELECT *
FROM movieshw.movies
WHERE genres LIKE '%comedy%'
  AND title LIKE '%2000%';
-- #10. Find any movies that are about death and are a comedy
SELECT *
FROM movieshw.movies
WHERE genres LIKE '%comedy'
  AND title LIKE '%death';
-- #11. Find any movies from either 2001 or 2002 with a title containing super
SELECT *
FROM movieshw.movies
WHERE title LIKE ('%2001%' OR '%2002%'
)
  AND genres LIKE '%super%';
-- #12.Create a new table called actors (We are going to pretend the actor can only play in one movie). The table should include name, character name, foreign key to movies and date of birth at least plus an id field.
SELECT *
-- #13.Pick 3 movies and create insert statements for 10 actors each. You should use the multi value insert statements
SELECT *
FROM movieshw.movies
-- #14.Create a new column in the movie table to hold the MPAA rating. UPDATE 5 different movies to their correct rating
SELECT column movieshw
.movies.rating
UPDATE rating;
-- // With Joins
-- #15. Find all the ratings for the movie Godfather, show just the title and the rating
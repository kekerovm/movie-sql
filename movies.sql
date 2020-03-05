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
SELECT title
FROM movies
WHERE title LIKE '%super%' AND title LIKE '%(2002%)'
  OR title LIKE '%super%' AND title LIKE '%(2001%)';
-- #12.Create a new table called actors (We are going to pretend the actor can only play in one movie). The table should include name, character name, foreign key to movies and date of birth at least plus an id field.
CREATE TABLE 'movies'.'actors' ('id' INT NOT NULL AUTO_INCREMENT,
'fullName' VARCHAR
(45) NULL, 'characterName' VARCHAR
(45) NULL, 'DOB' DATE NULL, 'movieID' INT NULL, PRIMARY KEY
('id'));
-- #13.Pick 3 movies and create insert statements for 10 actors each. You should use the multi value insert statements
UPDATE movieshw.movies
SET MPAA_RATING = 'E'
WHERE id = 107;

UPDATE movieshw.movies
SET MPAA_RATING = 'PG'
WHERE id = 3;

UPDATE movieshw.movies
SET MPAA_RATING = 'R'
WHERE id = 111;

UPDATE movieshw.movies
SET MPAA_RATING = 'PG-13'
WHERE id = 1221;

UPDATE movieshw.movies
SET MPAA_RATING = 'G'
WHERE id = 59;


-- #14.Create a new column in the movie table to hold the MPAA rating. UPDATE 5 different movies to their correct rating
SELECT column movieshw
.movies.rating

UPDATE movies SET MPAA = "G" WHERE id = 1;
UPDATE movies SET MPAA = "PG" WHERE id = 2;
UPDATE movies SET MPAA = "PG-13" WHERE id = 10;
UPDATE movies SET MPAA = "R" WHERE id = 23;
UPDATE movies SET MPAA = "R" WHERE id = 5110;

-- // With Joins
-- #15. Find all the ratings for the movie Godfather, show just the title and the rating

-- #16. Order the previous objective by newest to oldest

-- #17. Find the comedies from 2005 and get the title and imdbid from the links table
SELECT movies.title, l.imdb_Id
FROM movieshw.movies
  LEFT JOIN links l ON movies.id = l.movies_Id
WHERE movies.title LIKE '%(2005)%'
-- #18. Find all movies that have no ratings
SELECT m.title, AVG(r.rating) as avgr
FROM movieshw.movies
  LEFT JOIN ratings r
  ON movies.id = r.movies_id
GROUP BY movies.id;
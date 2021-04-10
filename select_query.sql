/* Select single column */
SELECT
    name
FROM movies;

/* Select multiple columns */
SELECT
    rank,
    name,
    gross
FROM movies;

/* Select star */
SELECT * 
FROM movies;

/* Aliasing a column */
SELECT 
    name as movie_name
FROM movies;

/* Arithmetic in select statement */
SELECT (4+3) / 9; -- got 0.778

/* Add a new column with a default value and alias a column name
with this pattern
SELECT
 <column name>,
 <expression> AS <alias>,
 ...
FROM <table name> 
*/
SELECT
    name,
    'TH' AS language,
FROM movies;

/* Limit numbers of shown results */
SELECT *
FROM movies
LIMIT 5;

/* Select distinct values in a column */
SELECT DISTINCT studio
FROM movies;

/* Select distinct with a combination of fields 
Below will display unique years that each movie studio 
has produced */
SELECT DISTINCT
    studio,
    year
FROM movies;

/* Sorting row results by a column using ORDER BY */
SELECT *
FROM movies
ORDER BY gross;

/* Descending order */
SELECT *
FROM movies
ORDER BY gross DESC;

/* Sort row results by multiple columns */
SELECT *
FROM movies
ORDER BY
    year DESC, -- 2020 before 2019
    studio, -- A to Z 
    name; -- A to Z

/* Select top 3 movies by highest gross in descending order */
SELECT *
FROM movies
ORDER BY gross DESC
LIMIT 3;
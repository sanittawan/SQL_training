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

/* */


/* */

/* */

/* */

/* */

/* */
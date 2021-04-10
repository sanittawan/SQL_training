/* See more operators at https://cloud.google.com/bigquery/docs/reference/standard-sql/functions-and-operators#comparison_operators */

/* Filtering data with WHERE */
SELECT name
FROM movies
where studio = 'จีทีเอช';

/* Operators */
SELECT *
FROM movies
WHERE gross > 250;

SELECT *
FROM movies
WHERE studio NOT LIKE 'จีทีเอช';

/* LIKE can be used to match patterns with % and _ */
SELECT *
FROM movies
WHERE name LIKE '%รัก%' -- movie with word รัก anywhere in the string

SELECT *
FROM movies
WHERE name LIKE 'รัก%' -- movie starting with word รัก

/* match movies where studio names are not the ones in bracket */
SELECT *
FROM movies
WHERE studio NOT IN ('จีทีเอช', 'จีดีเอช ห้าห้าเก้า')

SELECT *
FROM movies
WHERE gross BETWEEN 200 AND 300 -- between is inclusive

SELECT *
FROM movies
WHERE
    (gross > 100) AND
    studio IN ('จีทีเอช','จีดีเอช ห้าห้าเก้า','อาร์.เอส.ฟิล์ม')

SELECT *
FROM movies
WHERE gross > 100
AND (studio = 'จีทีเอช'
	OR studio = 'จีดีเอช ห้าห้าเก้า'
	OR studio = 'อาร์.เอส.ฟิล์ม'
)

/* */
/* */
/* */
/* */
/* */
/* */
/* */
/* */
/* */
/* */
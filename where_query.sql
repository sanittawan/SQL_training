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

/* Quiz 1 
display all unique post type values */
SELECT DISTINCT type
FROM posts

/* Quiz 2 
display all posts ordered by # reactions, #comments, # shares
in ascending order */
SELECT *
FROM posts
ORDER BY
    reactions,
    comments,
    shares

/* Quiz 3 
display top 10 posts of which type is link that have most #shares */
SELECT *
FROM posts
WHERE type = 'link'
ORDER BY shares DESC
LIMIT 10

/* Quiz 4 
display posts of which type is link and the link contains 
pattern 'medium.com/skooldio' and #shares less than 30 */

-- solution
SELECT *
FROM posts
WHERE 
    link LIKE '%medium.com/skooldio%' AND 
    shares < 30

-- I did. No need to specify type and put ()
SELECT *
FROM posts
WHERE 
    (type = 'link') AND
    (link LIKE '%medium.com/skooldio%') AND 
    shares < 30


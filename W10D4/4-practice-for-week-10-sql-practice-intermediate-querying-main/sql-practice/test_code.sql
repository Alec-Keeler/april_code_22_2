-- Query 1
SELECT * FROM albums
WHERE num_sold >= 100000;
-- ORDER BY num_sold DESC;

-- Query 2
SELECT * FROM albums WHERE year BETWEEN 2018 and 2020;

-- Query 3
SELECT * FROM albums WHERE band_id IN (1 ,3 ,4);

-- Query 4
SELECT * FROM albums WHERE title LIKE "the%";

-- Query 5
SELECT * FROM albums ORDER BY num_sold DESC LIMIT 2;

-- QUERY 6
SELECT * FROM albums
ORDER BY num_sold DESC
LIMIT 2 OFFSET 3;

----------
-- Step 0 - Create a Query 
----------
-- Query: Select all cats that have a toy with an id of 5

    -- Your code here

-- Paste your results below (as a comment):

SELECT * FROM cats 
JOIN cat_toys ON cat_id = cats.id 
WHERE toy_id = 5;


----------
-- Step 1 - Analyze the Query
----------
-- Query:

    -- Your code here

EXPLAIN QUERY PLAN
SELECT * FROM cats 
JOIN cat_toys ON cat_id = cats.id 
WHERE toy_id = 5;

-- Paste your results below (as a comment):


-- What do your results mean?

    -- Was this a SEARCH or SCAN?
-- QUERY PLAN
--SCAN TABLE cat_toys
--SEARCH TABLE cats USING INTEGER PRIMARY KEY (rowid=?)

    -- What does that mean?
-- We should add an index to the cat_toys table (to the toy_id col)




----------
-- Step 2 - Time the Query to get a baseline
----------
-- Query (to be used in the sqlite CLI):

    -- Your code here

-- Paste your results below (as a comment):
-- Run Time: real 0.005 user 0.002028 sys 0.000800
-- as low as 0.002



----------
-- Step 3 - Add an index and analyze how the query is executing
----------

-- Create index:

    -- Your code here

-- Analyze Query:
    -- Your code here
CREATE INDEX idx_cat_toys_toy_id ON cat_toys(toy_id);
-- Paste your results below (as a comment):


-- Analyze Results:

    -- Is the new index being applied in this query?




----------
-- Step 4 - Re-time the query using the new index
----------
-- Query (to be used in the sqlite CLI):

    -- Your code here

-- Paste your results below (as a comment):
-- Run Time: real 0.000 user 0.000118 sys 0.000091

-- Analyze Results:
    -- Are you still getting the correct query results?


    -- Did the execution time improve (decrease)?


    -- Do you see any other opportunities for making this query more efficient?


---------------------------------
-- Notes From Further Exploration
---------------------------------
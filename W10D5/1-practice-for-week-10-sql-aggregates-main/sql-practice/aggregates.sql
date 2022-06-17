-- Step 1
SELECT COUNT(*) AS count FROM cats;
-- SELECT (birth_year + 10) AS yearPlusTen FROM cats;

-- Step 2a

SELECT
MAX(birth_year) AS youngest,
MIN(birth_year) AS oldest
FROM cats;

-- select name from cats where birth_year in (select min(birth_year) from cats);

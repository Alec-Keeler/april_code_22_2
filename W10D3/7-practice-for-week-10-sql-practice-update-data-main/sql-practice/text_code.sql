-- Step 1
UPDATE friends
SET last_name = 'Blue'
WHERE first_name = 'Amy' AND last_name = 'Pond';

-- Step 2
UPDATE friends
SET last_name = 'Smith'
WHERE last_name = 'Tyler'
  AND first_name = 'Rose';
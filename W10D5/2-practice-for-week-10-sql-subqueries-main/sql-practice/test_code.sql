-- Step A
SELECT toys.name FROM toys
    JOIN cats ON cats.id = toys.cat_id
    WHERE cats.name = 'Garfield';

-- Step 1
SELECT toys.name FROM toys WHERE cat_id IN (
    SELECT id FROM cats
    WHERE name = 'Garfield'
);

-- Step 2
INSERT INTO toys (name, cat_id) VALUES
    ('Pepperoni', (SELECT id FROM cats WHERE name = 'Garfield'));

-- UPDATE toys
-- SET cat_id = (
--     SELECT id FROM cats WHERE name = 'Smudge'
-- )
-- WHERE name = 'Pepperoni';
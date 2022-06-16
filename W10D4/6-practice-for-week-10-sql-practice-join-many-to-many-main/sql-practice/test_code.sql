-- Step 1
SELECT musicians.first_name, instruments.type
FROM musicians
JOIN instruments JOIN musician_instruments
ON (musician_instruments.instrument_id = instruments.id)
AND (musician_instruments.musician_id = musicians.id);

SELECT musicians.first_name, instruments.type 
FROM musicians
JOIN musician_instruments 
    ON (musicians.id = musician_instruments.musician_id)
JOIN instruments 
    ON (musician_instruments.instrument_id = instruments.id);


-- Step 2
SELECT musicians.first_name, musicians.last_name
FROM musician_instruments
JOIN instruments 
    ON (instrument_id = instruments.id)
JOIN musicians 
    ON (musician_id = musicians.id)
WHERE instruments.type = 'piano';

-- SELECT musicians.first_name, instruments.type
-- FROM musicians
-- JOIN instruments, musician_instruments
-- ON (musician_instruments.musician_id = instrument_id)
-- WHERE (musician_instruments.musician_id = musician_id);
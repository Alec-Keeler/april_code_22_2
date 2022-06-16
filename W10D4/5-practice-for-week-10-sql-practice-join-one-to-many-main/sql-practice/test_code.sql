-- Step 1
SELECT *
FROM albums
JOIN bands
ON (bands.id = albums.band_id);

-- Step 2
SELECT bands.name FROM bands 
JOIN albums ON (bands.id = albums.band_id)
  WHERE num_sold <= 20000;
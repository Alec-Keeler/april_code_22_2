CREATE TABLE puppies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(50),
    age_yrs NUMERIC(3,1), -- 5.95 = 6.0
    breed VARCHAR(100),
    weight_lbs INTEGER,
    microchipped BOOLEAN
);
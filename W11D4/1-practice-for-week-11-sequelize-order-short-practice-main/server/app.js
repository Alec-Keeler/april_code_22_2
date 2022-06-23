// Instantiate Express and the application - DO NOT MODIFY
const express = require('express');
const app = express();

// Import environment variables in order to connect to database - DO NOT MODIFY
require('dotenv').config();
require('express-async-errors');
const { Op } = require("sequelize");

// Import the models used in these routes - DO NOT MODIFY
const { Band, Musician } = require('./db/models');

// Express using json - DO NOT MODIFY
app.use(express.json());


// STEP 1: Order by one attribute
// Get all bands, ordered by createdAt, latest first
app.get('/bands/latest', async (req, res, next) => {
    const bands = await Band.findAll({ 
        // Your code here
        order: [['createdAt', 'DESC']]
    });
    res.json(bands);
})

// STEP 2: Order by multiple attributes
// Get all musicians, ordered by last name, then first name, alphabetically
app.get('/musicians/alphabetic', async (req, res, next) => {
    const musicians = await Musician.findAll({ 
        // Your code here
        attributes: ['firstName', 'lastName'], //SELECT firstname, lastname
        order: [['lastName'], ['firstName']]
    }); 
    res.json(musicians);
})

// STEP 3: Order by multiple attributes, including nested attributes
// Get bands and associated musicians, ordered by band name, then musician last 
// name, then first name, alphabetically
app.get('/bands/alphabetic-musicians', async (req, res, next) => {
    const bands = await Band.findAll({ 
        include: { model: Musician }, 
        // Your code here
        order: [['name'], [Musician, 'lastName'], [{ model: Musician }, 'firstName']],
    })
    res.json(bands);
})

// /musicians/lastname?lastName=xyz
app.get('/musicians/lastname', async(req, res) => {
    const { queryParam } = req.query;
    
    // SELECT * FROM musicians WHERE lastName LIKE '%xyz';
    const musicians = await Musician.findAll({
        where: {lastName: {
            [Op.endsWith]: queryParam
        }}
    })
    res.json({musicians})
})

// Root route - DO NOT MODIFY
app.get('/', (req, res) => {
    res.json({
        message: "API server is running"
    });
});

// Set port and listen for incoming requests - DO NOT MODIFY
const port = 5000;
app.listen(port, () => console.log('Server is listening on port', port));
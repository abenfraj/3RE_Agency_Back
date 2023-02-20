const express = require('express');
const { initDatabase } = require('./database');
const { getGarages } = require('./helpers/garage');
const { getMaisons, getLogements, getLogementsFromCountry } = require('./helpers/logements');

const app = express();
const PORT = 3000;

const connection = initDatabase();

app.listen(PORT, () => {
  console.log('Express app listening on port ' + PORT);
});

app.get('/logements', (req, res) => {
    getLogements(req, res, connection);
});

app.get('/garages', (req,res) => {
  getGarages(req,res,connection);
});

app.get('/logements/:country', (req,res) => {
  const country = req.params.country
  getLogementsFromCountry(req,res,connection, country);
});
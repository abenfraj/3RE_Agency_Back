const express = require('express');
const { initDatabase } = require('./database');
const { getMaisons } = require('./helpers/maison');

const app = express();
const PORT = 3000;

const connection = initDatabase();

app.listen(PORT, () => {
  console.log('Express app listening on port ' + PORT);
});

app.get('/', (req, res) => {
    res.send('Hello World!');
});

app.get('/maisons', (req, res) => {
    getMaisons(req, res, connection);
});
const {v4: uuidv4} = require("uuid");
const crypto = require('crypto');

const getNomPersonnes = (req, res, connection) => {
  connection.query("SELECT DISTINCT nom FROM Personne", (error, results) => {
    if (error) throw error;
    res.send(results);
  });
};

const getAcheteurs = (req, res, connection) => {
  connection.query(
    "select nom from personne where idPersonne NOT IN (select idLogement From logement)",
    (error, results) => {
      if (error) throw error;
      res.send(results);
    }
  );
};

const getPersonneWhereNbTelephoneNull = (req, res, connection) => {
  connection.query(
    "select * from personne where numeroTelephone IS NULL;",
    (error, results) => {
      if (error) throw error;
      res.send(results);
    }
  );
};

const getPersonneWhereNbTelephoneNotNull = (req, res, connection) => {
  connection.query(
    "select * from personne where numeroTelephone IS NOT NULL;",
    (error, results) => {
      if (error) throw error;
      res.send(results);
    }
  );
};

const insertNewPersonne = (req, res, connection) => {
  const { name, address } = req.body;
  const uuid = uuidv4();
  const hash = crypto.createHash('sha256').update(uuid).digest('hex');
  const number = parseInt(hash.substring(0, 16), 16) % 1000000;
  connection.query(
    "INSERT INTO personne (idPersonne, nom, adresse) VALUES (?, ?, ?)",
    [number, name, address],
    (error, results) => {
      if (error) throw error;
      res.send(results);
    }
  );
};

module.exports = {
  getNomPersonnes,
  getAcheteurs,
  getPersonneWhereNbTelephoneNotNull,
  getPersonneWhereNbTelephoneNull,
  insertNewPersonne,
};

const {v4: uuidv4} = require("uuid");
const crypto = require('crypto');

const getLogements = (req, res, connection) => {
  connection.query(
    "SELECT * FROM logement ORDER BY dateDisponibilite DESC",
    (error, results) => {
      if (error) throw error;
      res.send(results);
    }
  );
};

const getLogementsFromCountry = (req, res, connection, country) => {
  connection.query(
    "SELECT * FROM logement as l where l.adresse LIKE '% " + country + "%'",
    (error, results) => {
      if (error) throw error;
      res.send(results);
    }
  );
};

const getProprietaires = (req, res, connection) => {
  connection.query(
    "SELECT DISTINCT nomPropriétaire from logement",
    (error, results) => {
      if (error) throw error;
      res.send(results);
    }
  );
};

const getLogementOrderByDate = (req, res, connection) => {
  connection.query(
    "SELECT * FROM logement ORDER BY dateDisponibilite ASC",
    (error, results) => {
      if (error) throw error;
      res.send(results);
    }
  );
};

const getLogementById = (req, res, connection, id) => {
  connection.query(
    "SELECT * from garage where idLogement = '" + id + "'",
    (error, results) => {
      if (error) throw error;
      res.send(results);
    }
  );
};

const getLogementNeufAVendre = (req, res, connection, id) => {
  connection.query(
    "SELECT * from garage where idLogement = '" + id + "'",
    (error, results) => {
      if (error) throw error;
      res.send(results);
    }
  );
};

const getLogementsGroupByProprietaire = (req, res, connection) => {
  connection.query(
    "SELECT adresse FROM logement Group by nomPropriétaire;",
    (error, results) => {
      if (error) throw error;
      res.send(results);
    }
  );
};

//--Récupérer les noms des propriétaires qui louent pour un prix donné
const getInfosFromLogementBtPrice = (req, res, connection, prix) => {
  connection.query(
    "SELECT nomPropriétaire, numeroTelephone FROM logement INNER JOIN transaction on logement.idLogement = transaction.idLogement where transaction.prixLocation = '" +
      prix +
      "'",
    (error, results) => {
      if (error) throw error;
      res.send(results);
    }
  );
};

const getLogementsSansVisitePrevu = (req, res, connection) => {
  connection.query(
    "select * from logement where idPersonne NOT IN (select idLogement From visite)",
    (error, results) => {
      if (error) throw error;
      res.send(results);
    }
  );
};

const getLogementFromDate = (req, res, connection, date) => {
  connection.query(
    "select * from logement where idPersonne IN (select idLogement From visite where dateVisite = '" +
      date +
      "')",
    (error, results) => {
      if (error) throw error;
      res.send(results);
    }
  );
};

const getLogementByAdresseAndPrixLocation = (
  req,
  res,
  connection,
  prix,
  adresse
) => {
  connection.query(
    "select * from logement inner join visite on logement.idLogement = visite.idLogement Where visite.prixLocation <= " +
      prix +
      " AND logement.adresse LIKE '% " +
      adresse +
      "%'",
    (error, results) => {
      if (error) throw error;
      res.send(results);
    }
  );
};

const getLocation = (req, res, connection, prix) => {
  connection.query(
    "select * from logement inner join visite on logement.idLogement = visite.idLogement Where visite.prixLocation <= " +
      prix +
      " AND logement.adresse LIKE '% " +
      adresse +
      "%'",
    (error, results) => {
      if (error) throw error;
      res.send(results);
    }
  );
};

const getMaxPrixLocation = (req, res, connection) => {
  connection.query(
    "select MIN(prixLocation) FROM transaction inner join logement on transaction.idLogement = logement.idLogement where logement.type != 'maison'",
    (error, results) => {
      if (error) throw error;
      res.send(results);
    }
  );
};

const getAveragePriceOfAGivenCity = (req, res, connection, adresse) => {
  connection.query(
    "select AVG(prixAchat) FROM transaction inner join logement on transaction.idLogement = logement.idLogement where logement.adresse LIKE '%" +
      adresse +
      "'%",
    (error, results) => {
      if (error) throw error;
      res.send(results);
    }
  );
};

const getNbLogementsParisien = (req, res, connection, adresse) => {
  connection.query(
    "select count(*) as nbAppartementParisien from logement where adresse like '%paris%';",
    (error, results) => {
      if (error) throw error;
      res.send(results);
    }
  );
};

const postNewLogement = (req, res, connection, adresse) => {
  connection.query(
    "select count(*) as nbAppartementParisien from logement where adresse like '%paris%';",
    (error, results) => {
      if (error) throw error;
      res.send(results);
    }
  );
};

const insertNewLogement = (req, res, connection) => {
  const {
    ownerName,
    type,
    livableSurface,
    livingState,
    objective,
    disponibility,
    numberOfRooms,
    address,
    personId,
  } = req.body;
  const uuid = uuidv4();
  const hash = crypto.createHash('sha256').update(uuid).digest('hex');
  const number = parseInt(hash.substring(0, 16), 16) % 1000000;
  connection.query(
    "INSERT INTO logement (idLogement, nomPropriétaire, type, surfaceHabitable, etatHabitation, objectifLogement, dateDisponibilite, nbPieces, adresse, idPersonne) VALUES ('" +
      number +
      "', '" +
      ownerName +
      "', '" +
      type +
      "', '" +
      livableSurface +
      "', '" +
      livingState +
      "', '" +
      objective +
      "', '" +
      disponibility +
      "', '" +
      numberOfRooms +
      "', '" +
      address +
      "', '" +
      personId +
      "')",
    (error, results) => {
      if (error) throw error;
      res.send(results);
    }
  );
};

module.exports = {
  getLogements,
  getLogementsFromCountry,
  getProprietaires,
  getLogementOrderByDate,
  getLogementById,
  getLogementNeufAVendre,
  getLogementsGroupByProprietaire,
  getInfosFromLogementBtPrice,
  getLogementsSansVisitePrevu,
  getLogementFromDate,
  getMaxPrixLocation,
  getAveragePriceOfAGivenCity,
  getNbLogementsParisien,
  insertNewLogement,
};

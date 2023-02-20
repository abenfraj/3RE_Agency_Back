const getNomPersonnes = (req, res, connection) => {
    connection.query("SELECT DISTINCT nom FROM Personne", (error, results) => {
      if (error) throw error;
      res.send(results);
    });
  };

const getAchteurs = (req, res, connection) => {
    connection.query("select nom from personne where idPersonne NOT IN (select idLogement From logement)", (error, results) => {
      if (error) throw error;
      res.send(results);
    });
};

const getPersonneWhereNbTelephoneNull = (req, res, connection) => {
    connection.query("select * from personne where numeroTelephone IS NULL;", (error, results) => {
      if (error) throw error;
      res.send(results);
    });
};

const getPersonneWhereNbTelephoneNotNull = (req, res, connection) => {
    connection.query("select * from personne where numeroTelephone IS NOT NULL;", (error, results) => {
      if (error) throw error;
      res.send(results);
    });
};

  module.exports = {
    getNomPersonnes,
    getAchteurs,
    getPersonneWhereNbTelephoneNotNull,
    getPersonneWhereNbTelephoneNull
  };
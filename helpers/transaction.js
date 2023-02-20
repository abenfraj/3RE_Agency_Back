const getTransactions = (req, res, connection) => {
    connection.query("SELECT * from TRANSACTION as t", (error, results) => {
      if (error) throw error;
      res.send(results);
    });
  };

const getTransactionsByPrixAchat = (req, res, connection, prix) => {
    connection.query("SELECT * FROM TRANSACTION GROUP BY idPersonne HAVING prixAchat = '" + prix + "'", (error, results) => {
      if (error) throw error;
      res.send(results);
    });
};

const getTransactionWhereNbGarageGreaterThanOne = (req, res, connection) => {
    connection.query("select t.* from transaction as t inner join logement as l on t.idLogement = l.idLogement inner join garage as g on l.idLogement = g.idLogement having count(g.idLogement) > 1;", (error, results) => {
      if (error) throw error;
      res.send(results);
    });
};

  module.exports = {
    getTransactions, 
    getTransactionsByPrixAchat,
    getTransactionWhereNbGarageGreaterThanOne
  };
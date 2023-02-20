const getGarages = (req, res, connection) => {
    connection.query("SELECT adresse,capacite FROM garage", (error, results) => {
      if (error) throw error;
      res.send(results);
    });
  };

const getGaragesOrderByCapacite = (req, res, connection) => {
    connection.query("SELECT adresse FROM garage ORDER BY capacite DESC", (error, results) => {
      if (error) throw error;
      res.send(results);
    });
};

const getGarageFromCapacity = (req, res, connection, capacity) => {
    connection.query("SELECT * from garage where capacite = '" + capacity + "'", (error, results) => {
      if (error) throw error;
      res.send(results);
    });
};

const getGarageHavingCapacityGreater = (req, res, connection, capacity) => {
    connection.query("SELECT adresse FROM garage GROUP BY capacite HAVING capacite >= '" + capacity + "'", (error, results) => {
      if (error) throw error;
      res.send(results);
    });
};

const getGarageWhereCapacityBetweenTwoValues = (req, res, connection, capacity1, capacity2) => {
    connection.query("select adresse from garage where capacite < " + capacity1 + " OR capacite > " + capacity2 + "", (error, results) => {
      if (error) throw error;
      res.send(results);
    });
};


const getMaxCapacityFromGarages = (req, res, connection, capacity1, capacity2) => {
    connection.query("select MAX(capacite) from garage", (error, results) => {
      if (error) throw error;
      res.send(results);
    });
};


  module.exports = {
    getGarages,
    getGaragesOrderByCapacite,
    getGarageFromCapacity,
    getGarageHavingCapacityGreater,
    getGarageWhereCapacityBetweenTwoValues,
    getMaxCapacityFromGarages
  };
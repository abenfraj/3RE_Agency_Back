const getMaisons = (req, res, connection) => {
  connection.query("SELECT * FROM maison", (error, results) => {
    if (error) throw error;
    res.send(results);
  });
};

module.exports = {
  getMaisons,
};

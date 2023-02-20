const getVisites = (req, res, connection) => {
    connection.query("SELECT * FROM Visite Group by dateVisite;", (error, results) => {
      if (error) throw error;
      res.send(results);
    });
  };
  
//-- Récupérer les dates de visites + les infos sur l'appartement visité par une personne
const getVisitesFromName = (req, res, connection, nom) => {
    connection.query("SELECT v.idPersonne,p.nom, l.* FROM visite as v inner join logement as l on v.idLogement = l.idLogement inner join personne as p on v.idPersonne = p.idPersonne where p.nom = '" + nom + "'", (error, results) => {
      if (error) throw error;
      res.send(results);
    });
};

  module.exports = {
    getVisites,
    getVisitesFromName
  };
const express = require("express");
const router = express.Router();
const mysql = require('mysql');

function dbConnect() {
    const connection = mysql.createConnection({
      host     : 'localhost',
      user     : 'root',
      password : '',
      database: 'histographie'
    });
    connection.connect();
    return connection;
  }
  
  

router.get('/',(req, res) => {
    const connection = dbConnect();
    // récuperer toute les categories
    const query = "SELECT * from categories";

    connection.query(query, function(err, result) {
      if (err) throw err;
      res.json(result);

    });
    connection.end();
  
});


router.get('/categories/:id',(req, res) => {
  const connection = dbConnect();
  // récuperer les catégories selon l'id
  const query = 'SELECT * from categories WHERE id= ' + req.params.id;
  connection.query(query, function(err, quizz) {
    if (err) throw err;
    res.status(200).json(quizz);
  });
  connection.end();
});

module.exports = router;
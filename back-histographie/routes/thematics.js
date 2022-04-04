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
    const query = 'SELECT * from thematics';
    connection.query(query, function(err, quizz) {
      if (err) throw err;
      res.status(200).json(quizz);
    });
    connection.end();
});


router.get('/:id',(req, res) => {
  const connection = dbConnect();
  const query = 'SELECT * from thematics WHERE id= ' + req.params.id;
  connection.query(query, function(err, quizz) {
    if (err) throw err;
    res.status(200).json(quizz);
  });
  connection.end();
});


module.exports = router;

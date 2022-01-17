const express = require('express')
var cors = require('cors')
const app = express()
const port = 3000

app.use(cors())
app.use(express.json())

app.get('/', (req, res) => {
  res.send('Hello World!')
})

//----------------------------------------------------------------------------------------- Tipusok lekérdezése

app.get('/tipusok', (req, res) => {
  var mysql = require('mysql')
  var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'szabo_mate_zarodoga'
  })
  
  connection.connect()
  
  connection.query('SELECT * from tipus', function (err, rows, fields) {
    if (err) throw err
  
    console.log(rows)

    res.send(rows)
  })
  
  connection.end()    

})

app.get('/etkez', (req, res) => {
  var mysql = require('mysql')
  var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'szabo_mate_zarodoga'
  })
  
  connection.connect()
  
  connection.query('SELECT * from etel_tipusok', function (err, rows, fields) {
    if (err) throw err
  
    console.log(rows)

    res.send(rows)
  })
  
  connection.end()    

})

app.post('/tipus_lekerdez', (req, res) => {
  var mysql = require('mysql')
  var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'szabo_mate_zarodoga'
  })
  
  connection.connect()
  
  connection.query('SELECT * from termekek where termektipus_id = '+req.body.bevitel1, function (err, rows, fields) {
    if (err) throw err
  
    console.log(rows)

    res.send(rows)
  })
  
  connection.end()    

})

app.get('/termekek', (req, res) => {
    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'szabo_mate_zarodoga'
    })
    
    connection.connect()
    
    connection.query('SELECT * from termekek', function (err, rows, fields) {
      if (err) throw err
    
      console.log(rows)

      res.send(rows)
    })
    
    connection.end()    

  })



app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})
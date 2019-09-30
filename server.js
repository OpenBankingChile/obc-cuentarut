const express = require('express')
const app = express()

app.get('/', function (req, res) {
    res.status(500).send("OBC CuentaRUT: not implemented yet");
})

var server = app.listen(6001, function () {
  console.log("OBC CuentaRUT. Listening on port 6001...")
})


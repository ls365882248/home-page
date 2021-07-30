'use strict';

var express = require('express');
var app = express();
app.set('view engine', 'jade');
app.use(express.static(__dirname + '/dist'));

app.get('/', function (req, res) {
  res.render('index');
});

var server = app.listen(
  3006,
  function () {
    var address = server.address().address;
    var port = server.address().port;
    console.log('App listening at http://%s:%s', address, port);
    console.log('Press Ctrl+C to quit.');
  }
);

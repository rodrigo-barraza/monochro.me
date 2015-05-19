// Generated by CoffeeScript 1.9.2
(function() {
  var app, assert, compile, express, path, server, stylus;

  express = require('express');

  path = require('path');

  assert = require('assert');

  stylus = require('stylus');

  app = express();

  compile = function(str, path) {
    return stylus(str).set('filename', path);
  };

  app.set('views', path.join(__dirname + '/client/view'));

  app.set('view engine', 'jade');

  app.use(stylus.middleware({
    src: path.join(__dirname + '/client/style'),
    dest: path.join(__dirname + '/public'),
    compile: compile
  }));

  app.use('/public', express["static"](path.join(__dirname + '/public')));

  app.use('/component', express["static"](path.join(__dirname + '/client/component')));

  app.use('/style', express["static"](path.join(__dirname + '/client/style')));

  app.get('/', function(req, res) {
    return res.render('index');
  });

  app.get('/who', function(req, res) {
    return res.render('who');
  });

  app.get('/contact', function(req, res) {
    return res.render('contact');
  });

  server = app.listen(10, function() {
    var host, port;
    host = server.address().address;
    port = server.address().port;
    return console.log('Listening http://%s:%s', host, port);
  });

}).call(this);

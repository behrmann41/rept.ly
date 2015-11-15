var express = require('express');
var router = express.Router();
var pg = require('pg')
var conString = process.env.DATABASE_URL;
var schema = require('../lib/data-schema.js')

router.get('/shelters', function(req, res, next) {
  pg.connect(conString, function(err, client, done) {
    if (err) {
      return console.error('error fetching client from pool', err);
    }
    client.query('SELECT * from shelters', function(err, result) {
      done();
      if (err) {
        return console.error('error running query', err);
      }
      res.json(schema.formatRes(result.rows)).status(200).end()
    });
  });
});

router.get('/locations', function(req, res, next) {
  pg.connect(conString, function(err, client, done) {
    if (err) {
      return console.error('error fetching client from pool', err);
    }
    client.query('SELECT * from locations', function(err, result) {
      console.log(result, "RESULT")
      done();
      if (err) {
        return console.error('error running query', err);
      }
      res.json(schema.formatRes(result.rows)).status(200).end()
    });
  });
});

router.get('/animals', function(req, res, next) {
  pg.connect(conString, function(err, client, done) {
    if (err) {
      return console.error('error fetching client from pool', err);
    }
    client.query('SELECT * from animals', function(err, result) {
      done();
      if (err) {
        return console.error('error running query', err);
      }
      res.json(schema.formatRes(result.rows)).status(200).end()
    });
  });
});

module.exports = router;

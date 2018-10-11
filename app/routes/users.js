var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/', function(req, res, next) {
  res.send('respond with a resource');
});

router.get('/new', (req, res, next) => {
  res.render('signup');
});

router.get('/session/new', (req, res, next) => {
  res.render('login');
});

module.exports = router;

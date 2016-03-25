var app = require('express');
var router = app.Router();

router.use('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});


module.exports = router;



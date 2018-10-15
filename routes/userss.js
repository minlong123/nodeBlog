var express = require('express');
var router = express.Router();


router.get('/userss', function(req, res, next) {
    res.render('user');
});

module.exports = router;

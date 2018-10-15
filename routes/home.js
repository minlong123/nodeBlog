var express = require('express');
var router = express.Router();


router.get('/home', function(req, res, next) {
    res.render('home');
});

router.get('/layout',function(req,res,next){
    req.session.destroy(function(){
        res.redirect("/login");
    })
});

module.exports = router;

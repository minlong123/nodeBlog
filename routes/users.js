var express = require('express');
var db=require('../sqlcon.js');
var router = express.Router();

/* GET users listing. */
router.get('/login', function(req, res, next) {
    res.render('login', { title: 'Express' });
});


router.post('/login',function(req,res,next){
    var ver=req.body.ver;
    var userName=req.body.user;
    var pwd=req.body.pwd;
    if(ver==req.session.captcha){
        db.query("select * from blog_admin where username=? and password=?",[userName,pwd],function(err,data){
            if(err){
                console.log(err);
            }else if(data.length>0){
                req.session.is_login=true;
                res.render('home', { username:data[0]["username"]});
                // console.log("登陆成功");
            }else{
                res.location('/login');
            }
        })
    }else{
        res.writeHead(200,{"Content-Type":"text/html;charset=utf8"})
        res.location('/login');
    }
});
router.get("/captchapng",function(req,res){
    var captchapng = require("captchapng")
    var mynum = parseInt(Math.random()*9000+1000);
    req.session.captcha = mynum;
    var p = new captchapng(80,30,mynum); // width,height,numeric captcha
    p.color(0, 0, 0, 0);  // First color: background (red, green, blue, alpha)
    p.color(80, 80, 80, 255); // Second color: paint (red, green, blue, alpha)
    var img = p.getBase64();
    var imgbase64 = new Buffer(img,'base64');
    res.writeHead(200, {
        'Content-Type': 'image/png'
    });
    res.end(imgbase64);
});


module.exports = router;

var express = require('express');
var db=require('../sqlcon.js');
var router = express.Router();

router.get('/company', function(req, res, next) {
    // 当前页数
    var pagenum=req.query.page;

    console.log(pagenum);

    var start;
    var end=5;
    if(pagenum==undefined){
        pagenum=1;
        start=0;

    }else{
        start=(pagenum-1)*5;

    }
    var sql="select *,(select count(*) from mechanism) as count from mechanism limit ?,?";
    db.query(sql,[start,end],function(err,data){
        if(err){
            console.log(err);
        }else{
            res.render('company',{comlist:data,pagenum:pagenum});
        }
    })
});
router.post('/addComp',function(req,res,next){
    var names=req.body.names;
    var bianhao=req.body.bianhao;
    var cons=req.body.cons;
    db.query("insert into mechanism (names,bianhao,cons) values(?,?,?)",[names,bianhao,cons],function(err,data){
        if(err){
            console.log(err);
        }else{
            res.redirect("/company");
        }
    })
});
router.post('/deltecompan',function(req,res,next){
    var id=req.body.id;
    db.query("delete from mechanism where id=?",[id],function(err,data){
        if(err){
            console.log(err);
        }else{
            res.send("success");
        }
    })
});



router.post('/updatt',function(req,res,next){
    var id=req.body.id;
    db.query("select * from mechanism where id=?",[id],function(err,data){
        if(err){
            console.log(err);
        }else{
            res.send(data);
        }
    })
})

router.post('/updataComp',function(req,res,next){
    var id=req.body.id;
    var names=req.body.names;
    var bianhao=req.body.bianhao;
    var cons=req.body.cons;
    db.query("update mechanism set names=?,bianhao=?,cons=? where id=?",[names,bianhao,cons,id],function(err,data){
        if(err){
            console.log(err);
        }else{
            res.redirect("/company");
        }
    })
})

module.exports = router;

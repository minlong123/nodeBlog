var express = require('express');
var db=require('../sqlcon.js');
var router = express.Router();


// 用户组列表管理
router.get('/usergroup', function(req, res, next) {
    var pagenum=req.query.page;//当前页
    var sqls="select count(*) from groups as count";
    db.query(sqls,function(err,data){
        if(err){
            console.log(err);
        }else{
            var start;
            var end=5;//每页条数
            var pagesum;//总数
            if(pagenum==undefined){
                pagenum=1;
            }
            pagesum=data[0]['count(*)'];
            if(pagesum%5==0){
                pagenum=pagesum/5;
            }
            start=(pagenum-1)*end;
            if(start<0){start=0;}
            var sql="select * from groups limit ?,?";
            db.query(sql,[start,end],function(err,data){
                if(err){
                    console.log(err);
                }else{
                    res.render('user_group',{grouplist:data,pagenum:pagenum,pagesum:pagesum});
                }
            })

        }
    });

});

// 添加用户组
router.post('/addgroup',function(req,res,next){
    var groupName=req.body.groupname;
    var groupPower=JSON.parse(req.body.grouppowers).join(",");
    db.query("insert into groups(groupname,grouppower,grouptip) values(?,?,?)",[groupName,groupName,groupPower],function(err,data){
        if(err){
            console.log(err);
        }else{
            res.send("用户组添加成功");
        }
    })
});

// 删除用户组
router.get('/deletegroup',function(req,res,next){
    var id=req.query.id;
    db.query('delete from groups where id=?',[id],function(err,data){
        if(err){
            console.log(err);
        }else{
            var sqls="select count(*) from groups as count";
            db.query(sqls,function(err,data){
                if(err){
                    console.log(err);
                }else{
                    res.send(data);

                }
            })

        }
    })
});

// 查询单个用户信息
router.post('/updatagroup',function(req,res,next){
    var id=req.body.id;
    db.query("select * from groups where id=?",[id],function(err,data){
        if(err){
            console.log(err);
        }else{
            res.send(data);
        }
    })
});

// 更新该用户信息
router.post('/updatagroups',function(req,res,next){
    var groupname=req.body.groupName;
    var grouppower;
    // 判断用户是否选择了一个，后面这件事可以放在前台来做。
    if((req.body.grouppo)!=null){
        // 将前台传过来的解析为json字符串,再来判断用户是否只选择了一个
        grouppower=JSON.stringify(req.body.grouppo).length==6 ? req.body.grouppo :(req.body.grouppo).join(",");
    }else{
        grouppower="请至少选择一个权限";
    }

    var grouptip=req.body.grouptip;
    var id=req.body.id;
    var sql="update groups set groupname=?,grouppower=?,grouptip=? where id=?";
    db.query(sql,[groupname,grouptip,grouppower,id],function(err,data){
        if(err){
            console.log(err);
        }else{
            res.redirect('/usergroup');
        }
    })
});

// 删除选择的部分用户信息
router.post('/alldeleteg',function(req,res,next){
    var id=JSON.parse(req.body.id);
    db.query("delete from groups where id in(?)",[id],function(err,data){
        if(err){
            console.log(err);
        }else{
            var sqls="select count(*) from groups as count";
            db.query(sqls,function(err,data){
                if(err){
                    console.log(err);
                }else{
                    res.send(data);

                }
            })
        }
    })
});
module.exports = router;

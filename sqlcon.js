var mysql=require("mysql");
var db=mysql.createConnection({
    host:"localhost",
    port:3306,
    user:"root",
    password:"root",
    database:"blog"
});

module.exports=db;
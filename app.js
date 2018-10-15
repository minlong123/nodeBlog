var createError = require('http-errors');
var express = require('express');
var path = require('path');

var cookieParser = require('cookie-parser');
var logger = require('morgan');

var session = require('express-session');


var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');
var homeRouter = require('./routes/home');
var userssRouter = require('./routes/userss');
var usergroupRouter = require('./routes/usergroup');
var companyRouter = require('./routes/company');



var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());


app.use(session({
    secret: 'keyboard',
    cookie: {maxAge:100000},
    rolling:true,
    resave:true,
    saveUninitialized:true
}));
app.use(express.static(path.join(__dirname, 'public')));

app.use(function(req,res,next){
  if(req.session.is_login){
    next();
  }else if(req.url=="/" || req.url=="/login" || req.url.indexOf("/captchapng")!=-1){
      next();
  }else{
      res.write("<script>window.location.href='/login'</script>");
  }
});



app.use('/',[indexRouter,usersRouter,homeRouter,userssRouter,usergroupRouter,companyRouter]);

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;

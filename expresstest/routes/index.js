
/*
 * GET home page.
 */

function fib(n){
  return n<2?n:fib(n-1)+fib(n-2);
}

exports.index = function(req, res){
  res.render('index', { title: fib(20)+'' })
};
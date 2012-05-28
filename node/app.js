var http = require('http');

function fib(n){
  return n<2?n:fib(n-1)+fib(n-2);
}

http.createServer(function (req, res) {
  res.end(fib(20).toString());
}).listen(4569, "127.0.0.1");

console.log('Server running at http://127.0.0.1:4569/');
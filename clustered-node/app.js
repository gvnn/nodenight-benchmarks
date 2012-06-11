var cluster = require('cluster');
var http = require('http');
var os = require('os');

function fib(n){
  return n<2?n:fib(n-1)+fib(n-2);
}


if (cluster.isMaster){
	for (var i = 0; i < os.cpus().length; i++){
		cluster.fork();
	}

	cluster.on('death', function(worker){
		console.log('worker ' + worker.pid + 'died');
	});
} else {
	http.createServer(function(req, res){
		res.writeHead(200);
		res.end(fib(20).toString());
	}).listen(4571);
}


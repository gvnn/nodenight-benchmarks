ab -g plot/rails.dat -r -n 100 -c 5 http://127.0.0.1:4567/home/index
ab -g plot/django.dat -r -n 100 -c 5 http://127.0.0.1:4568/
ab -g plot/node.dat -r -n 100 -c 5 http://127.0.0.1:4569/
ab -g plot/php.dat -r -n 100 -c 5 http://localhost:4560/fib.php
ab -g plot/python.dat -r -n 100 -c 5 http://127.0.0.1:4570/
ab -g plot/ruby.dat -r -n 100 -c 5 http://127.0.0.1:4571/
ab -g plot/express.dat -r -n 100 -c 5 http://127.0.0.1:4572/
ab -g plot/clustered-node.dat -r -n 100 -c 5 http://127.0.0.1:4573/
gnuplot plot/plot.p
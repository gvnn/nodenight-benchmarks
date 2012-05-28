Melbourne Node Night Benchmarks
====================

A bunch of benchmarks on different web frameworks.


how to
-------

start all the platforms

    sh run.sh

run ab (Apache Benchmark) against all the scripts

    sh bench.sh

kill all the pending processes

    sh kill.sh


output
-------

``bench.sh`` produces a series of ``.dat`` files in the ``plot`` folder, 
these files are processed by ``gnuplot`` and the output is ``.png`` file that looks
like the one below

![sample-output](http://github.com/gvnn/nodenight-benchmarks/raw/master/sample-output.png)
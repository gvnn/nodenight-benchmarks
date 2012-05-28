Melbourne Node Night Benchmarks
====================

A bunch of benchmarks on different web frameworks. Currently the only script running
is a calculation of the Fibonacci sequence for the first twenty numbers.

### frameworks

* ``djangotest``: standard django configuration
* ``expresstest``: node.js express framework
* ``node``: basic node.js http server
* ``php``: classic php
* ``python``: standard python http server
* ``railstest``: standard rails configuration
* ``ruby``: rake configuration

### requirements
These tests require: Apache, Node.js, Ruby, Ruby On Rails, Python, Django

### how to

* start all the platforms

        sh run.sh

* run ab (Apache Benchmark) against all the scripts

        sh bench.sh

* kill all the pending processes

        sh kill.sh


### output

``bench.sh`` produces a series of ``.dat`` files in the ``plot`` folder, 
these files are processed by ``gnuplot`` and the output is ``.png`` file that looks
like the one below

![sample-output](https://github.com/gvnn/nodenight-benchmarks/raw/master/sample-output.png)

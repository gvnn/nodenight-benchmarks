kill -9 `ps -aef | grep 'djangotest/manage.py' | grep -v grep | awk '{print $2}'`
kill -9 `ps -aef | grep 'node node/app.js' | grep -v grep | awk '{print $2}'`
kill -9 `ps -aef | grep 'node clustered-node/app.js' | grep -v grep | awk '{print $2}'`
kill -9 `ps -aef | grep 'rackup ruby/config.ru -p 4571' | grep -v grep | awk '{print $2}'`
kill -9 `ps -aef | grep 'node expresstest/app.js' | grep -v grep | awk '{print $2}'`
kill -9 `ps -aef | grep 'python python/app.py' | grep -v grep | awk '{print $2}'`
kill -9 `ps -aef | grep 'railstest/script/rails server' | grep -v grep | awk '{print $2}'`
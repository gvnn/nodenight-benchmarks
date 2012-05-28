#!/bin/bash

# django
nohup python djangotest/manage.py runserver 4568 >> /dev/null &
# standard node.js
nohup node node/app.js >> /dev/null &
# standard ruby
nohup rackup ruby/config.ru -p 4571 >> /dev/null &
# node express
nohup node expresstest/app.js >> /dev/null &
# standard python
nohup python python/app.py >> /dev/null &
# rails
nohup railstest/script/rails server --port 4567 >> /dev/null & echo "all started"
# php runs on apache
#!/bin/bash

#heroku config:set BUILDPACK=""
heroku buildpacks:set https://github.com/ktdocker90/heroku-buildpack-php-vinacart
git add -A
git commit -m "commit the change"
git push heroku master

#_------------
nginx -t
/app/.heroku/php/
vendor/bin/heroku-php-nginx --verbose public/

#nginx
/app/.heroku/php/etc/php/php-fpm.conf
/app/.heroku/php/etc/nginx/nginx.conf
/app/vendor/heroku/heroku-buildpack-php/conf/nginx/heroku.conf
/app/vendor/heroku/heroku-buildpack-php/conf/nginx/default_include.conf

#!/bin/bash

#heroku config:set BUILDPACK=""
heroku buildpacks:set https://github.com/ktdocker90/heroku-buildpack-php-vinacart
git add .
git commit -m "commit the change"
git push -u origin master

#!/bin/bash

#heroku config:set BUILDPACK=""
heroku buildpacks:set https://github.com/ktdocker90/heroku-buildpack-php-vinacart
git push -u origin master

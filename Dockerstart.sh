#!/bin/sh
## Starting docker containers
## Often I set this up with an init script to auto star/run. I am sure there are better ways but this was the way I know of that works.

date
docker-compose up -d

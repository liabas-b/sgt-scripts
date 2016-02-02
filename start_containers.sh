#!/bin/bash

path=$(pwd)

cd $path/docker-postgresql/
make create-storage-container
make run

cd $path

docker start postgresql-container
docker start redis-container

echo docker run -d --name redis-container -d redis
docker run -d --name redis-container -d redis

echo docker run -p 80:80 --link postgresql-container:postgresql --link redis-container:redis $@ --name SGT liabasb/sgt:new
docker run -p 80:80 --link postgresql-container:postgresql --link redis-container:redis $@ --name SGT liabasb/sgt:new

echo docker run -p 8080:80 --link postgresql-container:postgresql --link redis-container:redis $@ --name SGT_API liabasb/sgt:new
docker run -p 8080:80 --link postgresql-container:postgresql --link redis-container:redis $@ --name SGT_API liabasb/sgt:new

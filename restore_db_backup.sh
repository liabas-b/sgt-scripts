#!/bin/bash

path=$(pwd)

cd $path/docker-postgresql/

destination=$path/docker-postgresql/backup.tar.gz

last_backup=$(cat $path/last_pg_backup.txt)
echo $last_backup

cp $last_backup $destination

make restore

sudo docker rm restore_tmp

echo 'done'

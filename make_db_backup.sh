#!/bin/bash

path=$(pwd)
cd $path/docker-postgresql/

make backup

cd $path

timestamp=$(date +"%m-%d-%y-%H-%M-%S")

origin=$path/docker-postgresql/backup.tar.gz
destination=$path/pg_backups/$timestamp.tar.gz

chmod -R o+rwx $path/docker-postgresql
mkdir $path/pg_backups

cp $origin $destination

sudo docker rm backup_tmp

echo $destination > $path/last_pg_backup.txt
echo 'Saved pg backup to:'
cat $path/last_pg_backup.txt

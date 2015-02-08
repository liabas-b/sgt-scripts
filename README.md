#SGT docker like a BOSS


##Start


###First time

* Updates code with github
* Creates or migrates the database
* Populates the database

`sudo ./start_containers.sh -ti -e UPDATE=true -e POPULATE_DB=true`

When the porcess is completed, and `Starting unicorn` is prompted, you can detach from the container using `ctrl+p ctrl+q`.
Run with `-d` to directly detach without any output.


###Update

* Updates code with github

`sudo ./stop_containers.sh`
`sudo ./start_containers.sh -ti -e UPDATE=true -e POPULATE_DB=true`


###Backup database

`sudo ./stop_containers.sh`
`sudo ./make_db_backup.sh`
`sudo ./start_containers.sh`


###Restore database backup

`sudo ./stop_containers.sh`
`sudo ./restore.sh`


###Stop

`sudo ./stop_containers.sh`


###Start

`sudo ./start_containers.sh`


That's all :)

#SGT docker like a BOSS

         _ _         _            _
 ___  __| | |_    __| | ___   ___| | _____ _ __
/ __|/ _` | __|  / _` |/ _ \ / __| |/ / _ \ '__|
\__ \ (_| | |_  | (_| | (_) | (__|   <  __/ |
|___/\__,_|\__|  \__,_|\___/ \___|_|\_\___|_|


##Start


###First time

* Updates code with github
* Creates or migrates the database
* Populates the database

1. `sudo ./start_containers.sh -ti -e UPDATE=true -e POPULATE_DB=true`

When the porcess is completed, and `Starting unicorn` is prompted, you can detach from the container using `ctrl+p ctrl+q`.
Run with `-d` to directly detach without any output.


###Update

* Updates code with github

1. `sudo ./stop_containers.sh`
2. `sudo ./start_containers.sh -ti -e UPDATE=true -e POPULATE_DB=true`


###Backup database

1. `sudo ./stop_containers.sh`
2. `sudo ./make_db_backup.sh`
3. `sudo ./start_containers.sh`


###Restore database backup

1. `sudo ./stop_containers.sh`
2. `sudo ./restore.sh`


###Stop

1. `sudo ./stop_containers.sh`


###Start

1. `sudo ./start_containers.sh`


That's all folks :)

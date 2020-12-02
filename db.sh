#!/bin/bash

docker exec -it common_db_1 sh -c 'cd /home/db && ./init_db.sh'

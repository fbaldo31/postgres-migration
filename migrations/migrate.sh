# !bin/bash

#####################################################
## Please provide PGPASSWORD & PGDATABASE env vars ##
#####################################################
for file in ./*.sql
do
    pg_restore -h localhost -U postgres -1 -v --if-exists --exit-on-error ./$file
done
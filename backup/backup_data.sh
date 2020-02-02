# !bin/bash

#####################################################
## Please provide PGPASSWORD & PGDATABASE env vars ##
#####################################################
pg_dump -h localhost -U postgres -v --blobs --data-only
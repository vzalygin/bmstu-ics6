#!/bin/sh

SCRPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

. $SCRPATH/scripts/params.sh

echo 'starting db';

if ! sudo docker run \
    --name $DOCKER_NAME -p $PORT:5432 \
    -e POSTGRES_USER=$USER \
    -e POSTGRES_PASSWORD=$PASSWORD \
    -e POSTGRES_DB=$DB_NAME \
    -e PGDATA=/var/lib/pgsql/data/pgdata \
    -d postgres:16-alpine; then
    exit 1
fi

while ! PGPASSWORD=$PASSWORD psql -h localhost -p $PORT -d $DB_NAME -U $USER -a -f $SCRPATH/scripts/empty.sql >/dev/null 2>&1; do
    sleep 0.1
done

echo 'db online'

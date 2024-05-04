#!/bin/sh

SCRPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

. $SCRPATH/scripts/params.sh

PGPASSWORD=$PASSWORD psql -h localhost -p $PORT -d $DB_NAME -U $USER -a -f $1
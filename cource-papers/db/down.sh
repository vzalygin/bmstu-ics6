#!/bin/sh

SCRPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

. $SCRPATH/scripts/params.sh

sudo docker rm -f $DOCKER_NAME; echo 'db offline'
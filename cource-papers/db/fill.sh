#!/bin/bash

{ ./down.sh && ./up.sh && ./query.sh ./scheme.sql && time ./filler.py; } 2>./6.log 1>&2;
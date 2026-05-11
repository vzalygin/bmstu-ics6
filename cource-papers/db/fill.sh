#!/bin/bash

{ time ./down.sh && time ./up.sh && time ./query.sh ./scheme.sql && time ./filler.py; } 2>./6.log 1>&2;
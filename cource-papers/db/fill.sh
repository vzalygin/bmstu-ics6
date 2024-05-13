#!/bin/bash

{ ./down.sh && ./up.sh && ./query.sh ./scheme.sql && time ./filler.py; } 2>./5.log 1>&2;
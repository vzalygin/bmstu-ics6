#!/bin/bash

{ ./down.sh && ./up.sh && ./query.sh ./scheme.sql && time ./filler.py; } 2>./logs3 1>&2;
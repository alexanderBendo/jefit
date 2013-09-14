#!/bin/sh

unset PATH
PATH=/bin:/usr/bin
sqlite3 myjefit.sqlite < myjefit-bootstrap.sql

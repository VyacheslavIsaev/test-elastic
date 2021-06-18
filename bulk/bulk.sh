#!/bin/bash

NAME=`basename "$1"`
NAME="${NAME%.*}"

curl -XPOST -H "Content-Type: application/x-ndjson" http://$ELASTIC/$NAME/_bulk --data-binary "@./$1"
#!/bin/bash

curl -XPOST -H "Content-Type: application/x-ndjson" http://$ELASTIC/products/_bulk --data-binary "@./products-bulk.json" 
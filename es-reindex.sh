#!/bin/bash

SOURCE=${1:-access-$(date +%Y.%m.%d)}
DEST=${2:-access-$(date +2017.%m.%d)}

docker exec -it tr_es_1 curl http://localhost:9200/_reindex -H 'Content-Type: application/json' -d "{\"source\":{\"index\":\"$SOURCE\"},\"dest\":{\"index\":\"$DEST\"}}"

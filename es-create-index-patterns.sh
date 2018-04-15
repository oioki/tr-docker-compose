#!/bin/bash

post()
{
    echo "POST $1"
    curl "http://localhost:5601$1" \
         -H 'Content-Type: application/json' \
         -H 'kbn-xsrf: true' \
         -d "$2" -s
    echo ; echo
}

post '/api/saved_objects/index-pattern/access' '{"attributes":{"title":"access-*","timeFieldName":"@timestamp"}}'
post '/api/saved_objects/index-pattern/error' '{"attributes":{"title":"error-*","timeFieldName":"@timestamp"}}'
post '/api/kibana/settings/defaultIndex' '{"value":"access"}'

#!/bin/bash

set -e

bash rotate-elasticsearch-index.sh access http://es.local:9200 30
bash rotate-elasticsearch-index.sh error http://es.local:9200 30

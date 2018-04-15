# tr-docker-compose

## Application
```
$ docker-compose build
$ docker-compose up --scale apache=2

$ curl http://localhost/
{"date":"2018-04-12","ip_address":"172.20.0.1"}
$ docker exec -ti tr_redis_1 redis-cli
127.0.0.1:6379> KEYS *
1) "PHPREDIS_SESSION:c92af47e9c39bf4a3eafb5abca573a97"
127.0.0.1:6379> GET PHPREDIS_SESSION:c92af47e9c39bf4a3eafb5abca573a97
"count|i:1;"
```

## Elastic Stack
1. Probably, you will need to [increase vm.max_map_count limit](https://www.elastic.co/guide/en/elasticsearch/reference/current/vm-max-map-count.html) on your host OS:
```
sudo sysctl -w vm.max_map_count=262144
```

2. Please allow up to 2 minutes for the Elastic Stack to start. You should access Kibana via http://localhost:5601

3. After that, you will need to create Kibana index patterns:
```
./elastic-create-index-patterns.py
```

4. Make a request to the application. After that, you should see new log entries in Kibana.


## Jenkins

1. Jenkins can be accessed via http://localhost:8080

2. For the sake of testing, you can copy Elasticsearch index by running this command:
```
./es-reindex.sh access-2018.04.15 access-2018.03.10
```

3. Daily job will run in between 03:00 and 03:59. However, you can change schedule in [Job Configuration](http://localhost:8080/job/rotate-elasticsearch-index/configure)

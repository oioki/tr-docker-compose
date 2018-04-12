# tr-docker-compose

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

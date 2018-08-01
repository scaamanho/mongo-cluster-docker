set DATA = /mongodata/

docker-compose -f docker-compose.1.auth.yml  -f docker-compose.cnf.auth.yml -f docker-compose.shard.yml rm -f


docker-compose -f docker-compose.1.auth.yml  -f docker-compose.cnf.auth.yml -f docker-compose.shard.yml rm -f
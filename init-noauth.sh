set DATA_DIR = /mongodata/

docker-compose -f docker-compose.1.noauth.yml  -f docker-compose.cnf.noauth.yml -f docker-compose.shard.yml
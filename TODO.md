
[ ] Establecer la version de mongo a 3.2

[x] Eliminar sharded 2

[x] mapear volumenes permanentes
	* localtime
	* ddbb files
	* config files
```
	mongors1n2:
    container_name: mongors1n2
    image: mongo:3.0.14
		...
	volumes:
		- /etc/localtime:/etc/localtime:ro
		- ${DATA_DIR}/mongors1n2:/data/db
		- ./config:/config
```
[ ] mapear volumenes con ficheros de configuracion de arranque de los distintos modos y poder arrancar en auth

[x] añadir otro mongos en el puerto 27018

[ ] añadir composes para arranque seguro cambiando los ficheros de configuracion de arranque

[ ] añadir scrips de usuarios

[ ] scripst para arrancar con auth y sin auth indicando la cadena de llamadas a los distintos  yml 
	sin auth 
		`docker-compose -f docker-compose.1.noauth.yml -f docker-compose.cnf.yml -f docker-compose.shard.yml`
	con auth
		`docker-compose -f docker-compose.1.auth.yml -f docker-compose.cnf.yml -f docker-compose.shard.yml`

	Setear las variables de entorno necesarias para los compose si fuese necesario
	Los ficheros de configuracion de arranque son distintos en auth y no auth

[ ] Incluir key de seguridad en directorio de configuracion

[ ] buenas ideas sobre sharded kyfile y usuarios de bbdd
https://medium.com/@gargar454/deploy-a-mongodb-cluster-in-steps-9-using-docker-49205e231319

[ ] Cambiar el arranque de auth para que el mongo-1-1 dependa del 2 y del 3 (idem en cfg) asi el router del shard puede depender de mongo-1-1 y de mongo-cnf-1 y no tener asi que arrancar los contenedores de configuracion.

[ ] 
[ ] 
[ ] 
[ ] 
[ ] 
[ ] 
[ ] 
[ ] 
[ ] 
[ ] 
[ ] 
[ ] 
[ ] 
[ ] 
[ ] 
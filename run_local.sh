docker run -d --rm -ti --net=host --env-file setup_local_env.sh postgis/postgis:12-2.5-alpine
docker run -d --rm -ti --net=host --env-file setup_local_env.sh pausch94/nd064-udaconnect-kafka-server:latest
sleep 10
docker run -d --rm -ti --net=host --env-file setup_local_env.sh pausch94/nd064-udaconnect-location-api:latest
docker run -d --rm -ti --net=host --env-file setup_local_env.sh pausch94/nd064-udaconnect-location-service:latest
docker run -d --rm -ti --net=host --env-file setup_local_env.sh pausch94/nd064-udaconnect-person-service:latest
docker run -d --rm -ti --net=host --env-file setup_local_env.sh pausch94/nd064-udaconnect-person-api:latest

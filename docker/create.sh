#!/bin/bash

# --------------------------------------------
# Basic build script for development purposes
# --------------------------------------------

docker build . -t peavers/squid-service:latest

docker stop squid-service
docker rm squid-service

docker create \
    --name=squid-service \
    -v /home/chris/docker/squid-service/config:/config \
    -e PGID=1000 -e PUID=1000 \
    -e TZ=Pacific/Auckland \
    -p 8080:8080 \
    peavers/squid-service

docker start squid-service
docker logs -f squid-service

docker exec -it squid-service /bin/bash

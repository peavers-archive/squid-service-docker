# squid-service-docker
Docker container for the squid-service project

### Running
Run the following command anywhere you have Docker installed:
```
docker create \
    --name=squid-service \
    --restart=always \
    -v <config location>:/config \
    -e PGID=1000 -e PUID=1000 \
    -e TZ=Pacific/Auckland \
    -p 8080:8080 \
    peavers/squid-service
```

Where `<config location>` points to the config file containing your details as above. 

Once the container has been built, simply start it with `docker start squid-service`

Codebase for squid-service can be found in [squid-service](https://github.com/peavers/squid-service)

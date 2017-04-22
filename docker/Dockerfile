FROM lsiobase/xenial
MAINTAINER peavers@gmail.com

# global environment settings
ENV DEBIAN_FRONTEND="noninteractive"

# install packages
RUN \
 apt-get update && \
 apt-get install -y \
    openjdk-8-jre \
    wget

# add local files
COPY root/ /

# ports and volumes
EXPOSE 8080
WORKDIR /app/squid-service
VOLUME /config

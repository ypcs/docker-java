FROM ypcs/debian:buster

RUN \
    /usr/local/sbin/docker-upgrade && \
    apt-get --assume-yes install \
        openjdk-10-jre-headless && \
    /usr/local/sbin/docker-cleanup


FROM ypcs/java:latest

RUN /usr/lib/docker-helpers/apt-setup && \
    /usr/lib/docker-helpers/apt-upgrade && \
    apt-get --assume-yes install \
        default-jdk-headless \
        default-jre-headless && \
    /usr/lib/docker-helpers/apt-cleanup


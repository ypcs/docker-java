FROM ypcs/java:jdk

RUN /usr/lib/docker-helpers/apt-setup && \
    /usr/lib/docker-helpers/apt-upgrade && \
    apt-get --assume-yes install \
        unzip
        wget && \
    /usr/lib/docker-helpers/apt-cleanup

ENV GRADLE_VERSION 5.4

RUN wget -O /tmp/gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" && \
    cd /tmp && \
    unzip -d gradle gradle.zip && \
    cd gradle && \
    mv * /opt/gradle && \
    rm -f /tmp/gradle.zip

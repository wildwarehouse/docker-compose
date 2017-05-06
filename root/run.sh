#!/bin/sh

dnf update --assumeyes && \
    cp /opt/docker/docker-compose.sh /usr/local/sbin/docker-compose.sh &&
    chmod 0500 /usr/local/sbin/docker-compose.sh &&
    cp /opt/docker/docker-compose /etc/sudoers.d/docker-compose &&
    chmod 0444 /etc/sudoers.d/docker-compose &&
    dnf install --assumeyes curl &&
    curl -L https://github.com/docker/compose/releases/download/1.13.0/docker-compose-$(uname -s)-$(uname -m) > /usr/local/sbin/docker-compose.sh &&
    chmod 0500 /usr/local/sbin/docker-compose.sh &&
    dnf update --assumeyes &&
    dnf clean all
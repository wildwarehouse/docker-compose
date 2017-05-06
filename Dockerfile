FROM wildwarehouse/fedora:0.0.0
USER root
COPY root /opt/docker/
RUN ["/usr/bin/sh", "/opt/docker/run.sh"]
USER user
ENTRYPOINT ["/usr/bin/sh", "docker-compose"]
CMD []
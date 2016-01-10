FROM 127.0.0.1:4000/kollaglue/ubuntu-source-base:latest
MAINTAINER Kolla Project (https://launchpad.net/kolla)



RUN apt-get install -y --no-install-recommends \
        keepalived \
        socat \
    && apt-get clean



COPY check_alive.sh /

COPY extend_start.sh /usr/local/bin/kolla_extend_start
RUN chmod 755 /usr/local/bin/kolla_extend_start /check_alive.sh


FROM 127.0.0.1:4000/kollaglue/ubuntu-source-base:latest
MAINTAINER Kolla Project (https://launchpad.net/kolla)



RUN apt-get install -y --no-install-recommends -t trusty-backports haproxy \
    && apt-get clean



COPY ensure_latest_config.sh /usr/local/bin/kolla_ensure_haproxy_latest_config
COPY extend_start.sh /usr/local/bin/kolla_extend_start
RUN chmod 755 /usr/local/bin/kolla_extend_start /usr/local/bin/kolla_ensure_haproxy_latest_config


FROM 127.0.0.1:4000/kollaglue/ubuntu-source-base:latest
MAINTAINER Kolla Project (https://launchpad.net/kolla)



RUN apt-get install -y --no-install-recommends \
        mariadb-galera-server \
        percona-xtrabackup \
        socat \
        expect \
    && apt-get clean \
    && rm -rf /var/lib/mysql/*



COPY extend_start.sh /usr/local/bin/kolla_extend_start
RUN chmod 755 /usr/local/bin/kolla_extend_start


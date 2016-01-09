FROM 127.0.0.1:4000/kollaglue/ubuntu-source-ceph-base:latest
MAINTAINER Kolla Project (https://launchpad.net/kolla)

COPY fetch_ceph_keys.py /usr/bin/

COPY extend_start.sh /usr/local/bin/kolla_extend_start
RUN chmod 755 /usr/local/bin/kolla_extend_start /usr/bin/fetch_ceph_keys.py
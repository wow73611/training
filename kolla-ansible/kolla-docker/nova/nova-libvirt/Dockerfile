FROM 127.0.0.1:4000/kollaglue/ubuntu-source-base:latest
MAINTAINER Kolla Project (https://launchpad.net/kolla)



RUN apt-get install -y --no-install-recommends \
        ceph-common \
        libvirt-bin \
        dmidecode \
        pm-utils \
        qemu \
        qemu-block-extra \
        ebtables \
    && apt-get clean \
    && mkdir -p /etc/ceph



COPY extend_start.sh /usr/local/bin/kolla_extend_start
RUN chmod 755 /usr/local/bin/kolla_extend_start


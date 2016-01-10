FROM 127.0.0.1:4000/kollaglue/ubuntu-source-base:latest
MAINTAINER Kolla Project (https://launchpad.net/kolla)



RUN apt-get install -y --no-install-recommends \
        tftpd-hpa \
        syslinux-common \
        syslinux \
    && apt-get clean \
    && mkdir -p /tftpboot \
    && cp /usr/lib/syslinux/pxelinux.0 /usr/lib/syslinux/chain.c32 /tftpboot



COPY tftp-map-file /tftpboot/map-file




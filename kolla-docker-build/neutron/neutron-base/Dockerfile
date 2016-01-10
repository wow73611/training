FROM 127.0.0.1:4000/kollaglue/ubuntu-source-openstack-base:latest
MAINTAINER Kolla Project (https://launchpad.net.kolla)


    

RUN apt-get install -y --no-install-recommends \
        iptables \
        dnsmasq \
        uuid-runtime \
        ipset \
        openvswitch-switch \
    && apt-get clean

    

ADD neutron-base-archive /neutron-base-source
RUN ln -s neutron-base-source/* neutron \
    && useradd --user-group neutron \
    && pip --no-cache-dir install /neutron \
    && mkdir -p /etc/neutron /usr/share/neutron /var/log/neutron /home/neutron \
    && cp -r /neutron/etc/* /etc/neutron/ \
    && cp -r /neutron/etc/neutron/* /etc/neutron/ \
    && cp /neutron/etc/api-paste.ini /usr/share/neutron \
    && mv /etc/neutron/neutron/ /etc/neutron/plugins/ \
    && chown -R neutron: /etc/neutron /usr/share/neutron /var/log/neutron /home/neutron



COPY extend_start.sh /usr/local/bin/kolla_extend_start
RUN chmod 755 /usr/local/bin/kolla_extend_start
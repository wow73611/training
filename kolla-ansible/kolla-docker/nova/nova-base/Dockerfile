FROM 127.0.0.1:4000/kollaglue/ubuntu-source-openstack-base:latest
MAINTAINER Kolla Project (https://launchpad.net/kolla)


    

RUN apt-get install -y --no-install-recommends \
        iptables \
        ebtables \
        dnsmasq \
        bridge-utils \
        python-libvirt \
        openssh-client \
        openvswitch-switch \
     && apt-get clean

    

ADD nova-base-archive /nova-base-source
RUN ln -s nova-base-source/* nova \
    && useradd --user-group nova \
    && pip --no-cache-dir install /nova \
    && mkdir -p /etc/nova /var/log/nova /home/nova \
    && cp -r /nova/etc/nova/* /etc/nova/ \
    && chown -R nova: /etc/nova /var/log/nova /home/nova


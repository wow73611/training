FROM 127.0.0.1:4000/kollaglue/ubuntu-source-openstack-base:latest
MAINTAINER Kolla Project (https://launchpad.net/kolla)



ADD ironic-base-archive /ironic-base-source
RUN ln -s ironic-base-source/* ironic \
    && useradd --user-group ironic \
    && pip --no-cache-dir install -c requirements/upper-constraints.txt /ironic \
    && mkdir -p /etc/ironic /var/log/ironic /home/ironic \
    && cp -r /ironic/etc/* /etc/ironic/ \
    && chown -R ironic: /etc/ironic /var/log/ironic /home/ironic


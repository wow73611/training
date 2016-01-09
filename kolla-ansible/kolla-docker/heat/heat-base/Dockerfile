FROM 127.0.0.1:4000/kollaglue/ubuntu-source-openstack-base:latest
MAINTAINER Kolla Project (https://launchpad.net/kolla)



ADD heat-base-archive /heat-base-source
RUN ln -s heat-base-source/* heat \
    && useradd --user-group heat \
    && pip --no-cache-dir install -c requirements/upper-constraints.txt /heat \
    && mkdir -p /etc/heat /var/log/heat /home/heat \
    && cp -r /heat/etc/heat/* /etc/heat/ \
    && chown -R heat: /etc/heat /var/log/heat /home/heat


FROM 127.0.0.1:4000/kollaglue/ubuntu-source-openstack-base:latest
MAINTAINER Kolla Project (https://launchpad.net.kolla)



ADD designate-base-archive /designate-base-source
RUN ln -s designate-base-source/* designate \
    && useradd --user-group designate \
    && pip --no-cache-dir install -c requirements/upper-constraints.txt /designate \
    && mkdir -p /etc/designate /var/log/designate /home/designate \
    && cp -r /designate/etc/designate/* /etc/designate/ \
    && chown -R designate: /etc/designate /var/log/designate /home/designate


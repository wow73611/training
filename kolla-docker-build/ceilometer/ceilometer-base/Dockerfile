FROM 127.0.0.1:4000/kollaglue/ubuntu-source-openstack-base:latest
MAINTAINER Kolla Project (https://launchpad.net/kolla)



ADD ceilometer-base-archive /ceilometer-base-source
RUN ln -s ceilometer-base-source/* ceilometer \
    && useradd --user-group ceilometer \
    && pip --no-cache-dir install -c requirements/upper-constraints.txt /ceilometer \
    && mkdir -p /etc/ceilometer /var/log/ceilometer /home/ceilometer \
    && cp -r /ceilometer/etc/* /etc/ceilometer/ \
    && chown -R ceilometer: /etc/ceilometer /var/log/ceilometer /home/ceilometer


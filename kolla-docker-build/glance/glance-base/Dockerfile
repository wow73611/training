FROM 127.0.0.1:4000/kollaglue/ubuntu-source-openstack-base:latest
MAINTAINER Kolla Project (https://launchpad.net/kolla)


    

RUN apt-get install -y --no-install-recommends \
        python-rbd \
        python-rados \
    && apt-get clean \
    && mkdir -p /etc/ceph/

    

ADD glance-base-archive /glance-base-source
RUN ln -s glance-base-source/* glance \
    && useradd --user-group glance \
    && pip --no-cache-dir install -c requirements/upper-constraints.txt /glance \
    && mkdir -p /etc/glance /var/log/glance /home/glance \
    && cp -r /glance/etc/* /etc/glance/ \
    && chown -R glance: /etc/glance /var/log/glance /home/glance


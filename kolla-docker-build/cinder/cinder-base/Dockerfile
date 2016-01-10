FROM 127.0.0.1:4000/kollaglue/ubuntu-source-openstack-base:latest
MAINTAINER Kolla Project (https://launchpad.net/kolla)


    

RUN apt-get install -y --no-install-recommends \
        lvm2 \
        ceph-common \
    && apt-get clean \
    && mkdir -p /etc/ceph

    

ADD cinder-base-archive /cinder-base-source
RUN ln -s cinder-base-source/* cinder \
    && useradd --user-group cinder \
    && pip --no-cache-dir install -c requirements/upper-constraints.txt /cinder \
    && mkdir -p /etc/cinder /var/log/cinder /home/cinder \
    && cp -r /cinder/etc/cinder/* /etc/cinder/ \
    && chown -R cinder: /etc/cinder /var/log/cinder /home/cinder


FROM 127.0.0.1:4000/kollaglue/ubuntu-source-openstack-base:latest
MAINTAINER Kolla Project (https://launchpad.net/kolla)



ADD magnum-base-archive /magnum-base-source
RUN ln -s magnum-base-source/* magnum \
    && useradd --user-group magnum \
    && pip --no-cache-dir install /magnum \
    && mkdir -p /etc/magnum /var/log/magnum /home/magnum \
    && cp -r /magnum/etc/* /etc/magnum/ \
    && chown -R magnum: /etc/magnum /var/log/magnum /home/magnum


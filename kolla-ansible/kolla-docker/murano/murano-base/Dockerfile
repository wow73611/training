FROM 127.0.0.1:4000/kollaglue/ubuntu-source-openstack-base:latest
MAINTAINER Kolla Project (https://launchpad.net/kolla)



ADD murano-base-archive /murano-base-source
RUN ln -s murano-base-source/* murano \
    && useradd --user-group murano \
    && pip --no-cache-dir install /murano \
    && mkdir -p /etc/murano /var/log/murano /home/murano \
    && cp -r /murano/etc/murano/* /etc/murano/ \
    && chown -R murano: /etc/murano /var/log/murano /home/murano


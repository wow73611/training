FROM 127.0.0.1:4000/kollaglue/ubuntu-source-openstack-base:latest
MAINTAINER Kolla Project (https://launchpad.net/kolla)



ADD zaqar-archive /zaqar-source
RUN ln -s zaqar-source/* zaqar \
    && useradd --user-group zaqar \
    && pip --no-cache-dir install /zaqar \
    && mkdir -p /etc/zaqar /var/log/zaqar /home/zaqar \
    && cp -r /zaqar/etc/* /etc/zaqar/ \
    && chown -R zaqar: /etc/zaqar /var/log/zaqar /home/zaqar



COPY extend_start.sh /usr/local/bin/kolla_extend_start
RUN chmod 755 /usr/local/bin/kolla_extend_start


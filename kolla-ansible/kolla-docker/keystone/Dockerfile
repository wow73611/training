FROM 127.0.0.1:4000/kollaglue/ubuntu-source-openstack-base:latest
MAINTAINER Kolla Project (https://launchpad.net/kolla)


    

RUN apt-get install -y --no-install-recommends \
        apache2 \
        libapache2-mod-wsgi \
    && echo > /etc/apache2/ports.conf \
    && apt-get clean

    

ADD keystone-archive /keystone-source
RUN ln -s keystone-source/* keystone \
    && useradd --user-group keystone \
    && pip --no-cache-dir install -c requirements/upper-constraints.txt /keystone \
    && mkdir -p /etc/keystone /var/www/cgi-bin/keystone /var/log/apache2 /home/keystone \
    && cp -r /keystone/etc/* /etc/keystone/ \
    && cp /keystone/httpd/keystone.py /var/www/cgi-bin/keystone/admin \
    && cp /keystone/httpd/keystone.py /var/www/cgi-bin/keystone/main \
    && chown -R keystone: /etc/keystone /var/www/cgi-bin/keystone /var/log/apache2 /home/keystone



RUN chown -R keystone: /var/www/cgi-bin/keystone \
    && chmod 755 /var/www/cgi-bin/keystone/*

COPY extend_start.sh /usr/local/bin/kolla_extend_start
RUN chmod 755 /usr/local/bin/kolla_extend_start


FROM 127.0.0.1:4000/kollaglue/ubuntu-source-openstack-base:latest
MAINTAINER Kolla Project (https://launchpad.net.kolla)


    

RUN apt-get install -y --no-install-recommends \
        apache2 \
        libapache2-mod-wsgi \
    && echo > /etc/apache2/ports.conf \
    && apt-get clean

    

ADD horizon-archive /horizon-source
RUN ln -s horizon-source/* horizon \
    && pip --no-cache-dir install -c requirements/upper-constraints.txt /horizon \
    && useradd --user-group horizon \
    && mkdir -p /etc/openstack-dashboard /home/horizon \
    && ln -s /etc/openstack-dashboard/local_settings /usr/lib/python2.7/site-packages/openstack_dashboard/local/local_settings.py \
    && cp -r /horizon/openstack_dashboard/conf/* /etc/openstack-dashboard/ \
    && cp /horizon/openstack_dashboard/local/local_settings.py.example /etc/openstack-dashboard/local_settings \
    && cp /horizon/manage.py /usr/bin/manage.py \
    && /usr/bin/python /usr/bin/manage.py collectstatic --noinput --clear \
    && /usr/bin/python /usr/bin/manage.py compress --force \
    && chown -R horizon: /etc/openstack-dashboard /home/horizon /usr/lib/python2.7/site-packages/static



COPY extend_start.sh /usr/local/bin/kolla_extend_start
RUN chmod 755 /usr/local/bin/kolla_extend_start


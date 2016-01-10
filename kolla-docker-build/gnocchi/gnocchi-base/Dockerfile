FROM 127.0.0.1:4000/kollaglue/ubuntu-source-openstack-base:latest
MAINTAINER Kolla Project (https://launchpad.net/kolla)


    

RUN apt-get install -y --no-install-recommends libpq-dev \
    && apt-get clean

    

ADD gnocchi-base-archive /gnocchi-base-source
RUN ln -s gnocchi-base-source/* gnocchi \
    && useradd --user-group gnocchi \
    && pip --no-cache-dir install -c requirements/upper-constraints.txt /gnocchi \
    && mkdir -p /etc/gnocchi /var/log/gnocchi /home/gnocchi \
    && cp -r /gnocchi/etc/* /etc/gnocchi/ \
    && chown -R gnocchi: /etc/gnocchi /var/log/gnocchi /home/gnocchi


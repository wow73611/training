FROM 127.0.0.1:4000/kollaglue/ubuntu-source-neutron-base:latest
MAINTAINER Kolla Project (https://launchpad.net.kolla)



RUN apt-get install -y --no-install-recommends supervisor \
    && apt-get clean

COPY supervisord.conf /etc/supervisor/



# TODO: SamYaple FWaaS is part of the l3-agent, not a seperate agent that is
# why this file is needed. To support FWaaS we cannot have a seperate container
# I need to figure out the best way to make this work together
#
# This file _does_ _not_ need to exist, you must remove referencing it from the
# exec line in the start script. Also all these config options can exist in the
# main neutron.conf if we wish
COPY fwaas_driver.ini /etc/neutron/

COPY neutron-dhcp-agent/ /var/lib/kolla/neutron-dhcp-agent
COPY neutron-l3-agent/ /var/lib/kolla/neutron-l3-agent
COPY neutron-metadata-agent/ /var/lib/kolla/neutron-metadata-agent
COPY config-sudoers.sh /var/lib/kolla/

COPY start.sh /

# We will remove this line in Docker 1.10 when namespace propogation works
VOLUME /run/netns

CMD ["/start.sh"]


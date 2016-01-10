FROM 127.0.0.1:4000/kollaglue/ubuntu-source-base:latest
MAINTAINER Kolla Project (https://launchpad.net/kolla)



RUN apt-get install -y --no-install-recommends rabbitmq-server \
    && apt-get clean \
    && rm -rf /var/lib/rabbitmq/* \
    && curl -o /usr/lib/rabbitmq/lib/rabbitmq_server-3.5.4/plugins/rabbitmq_clusterer-3.5.x-189b3a81.ez http://www.rabbitmq.com/community-plugins/v3.5.x/rabbitmq_clusterer-3.5.x-189b3a81.ez



# NOTE(sdake): the /bin/true unblocks the rabbitmq-plugins tool. Not sure how
#              or why.  My suspicion is it sends a signal to the parent
#              process.
RUN /usr/lib/rabbitmq/bin/rabbitmq-plugins enable --offline \
       rabbitmq_management \
       rabbitmq_clusterer \
    && /bin/true

COPY extend_start.sh /usr/local/bin/kolla_extend_start
RUN chmod 755 /usr/local/bin/kolla_extend_start


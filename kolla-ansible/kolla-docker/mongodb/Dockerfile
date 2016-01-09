FROM 127.0.0.1:4000/kollaglue/ubuntu-source-base:latest
MAINTAINER Kolla Project (https://launchpad.net/kolla)



RUN apt-get install -y --no-install-recommends mongodb-server \
    && apt-get clean



RUN mkdir -p /data/db

# TODO(SamYaple): updated mongodb to match the rest of Kolla
#ENTRYPOINT exec /bin/mongod --dbpath /data/db --logpath /var/log/mongodb/mongo.log --noprealloc --smallfiles


FROM 127.0.0.1:4000/kollaglue/ubuntu-source-nova-base:latest
MAINTAINER Kolla Project (https://launchpad.net/kolla)



ADD nova-novncproxy-archive /usr/share/nova-novncproxy-source
RUN cd /usr/share && ln -s nova-novncproxy-source/* novnc




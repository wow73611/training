FROM 127.0.0.1:4000/kollaglue/ubuntu-source-openstack-base:latest
MAINTAINER Kolla Project (https://launchpad.net.kolla)



ADD swift-base-archive /swift-base-source
RUN ln -s swift-base-source/* swift \
    && useradd --user-group swift \
    && pip --no-cache-dir install /swift \
    && mkdir -p /etc/swift /var/log/swift /home/swift \
    && cp -r /swift/etc/* /etc/swift/ \
    && chown -R swift: /etc/swift /var/log/swift /home/swift



COPY config-swift.sh /usr/local/bin/kolla_config_swift
COPY build-swift-ring.py /usr/local/bin/kolla_build_swift_ring
RUN mkdir /opt/swift
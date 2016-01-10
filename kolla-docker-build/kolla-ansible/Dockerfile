FROM 127.0.0.1:4000/kollaglue/ubuntu-source-openstack-base:latest
MAINTAINER Kolla Project (https://launchpad.net/kolla)



RUN pip --no-cache-dir install \
        shade \
        pyudev

RUN git clone --depth 1 -b v2.0.0-0.2.alpha2 https://github.com/ansible/ansible.git \
    && cd ansible \
    && git submodule update --init --recursive \
    && pip --no-cache-dir install .

RUN mkdir -p /etc/ansible /usr/share/ansible \
    && echo 'localhost ansible_connection=local' > /etc/ansible/hosts

COPY kolla_keystone_service.py kolla_keystone_user.py /usr/share/ansible/
COPY find_disks.py kolla_keystone_service.py kolla_keystone_user.py /usr/share/ansible/


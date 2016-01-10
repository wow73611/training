FROM 127.0.0.1:4000/kollaglue/ubuntu-source-base:latest
MAINTAINER Kolla Project (https://launchpad.net/kolla)




    

RUN apt-get install -y --no-install-recommends \
        ca-certificates \
        build-essential \
        python-dev \
        libssl-dev \
        libmariadbclient-dev \
        libxslt1-dev \
        libffi-dev \
        libyaml-dev \
        pkg-config \
        git \
    && apt-get clean

    

ADD openstack-base-archive /openstack-base-source

# TODO(SamYaple): Remove the sed once openstack/requirements is updated. This
#                 is to work around the issue with oslo.log and syslog.
#                 Related-Bug: #1499620
RUN ln -s openstack-base-source/* /requirements \
    && sed -i 's/oslo.log===1.11.0/oslo.log===1.12.1/' requirements/upper-constraints.txt \
    && curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py \
    && python get-pip.py \
    && rm get-pip.py \
    && pip --no-cache-dir install -U -c requirements/upper-constraints.txt \
        python-barbicanclient \
        python-ceilometerclient \
        python-congressclient \
        python-designateclient \
        python-heatclient \
        python-ironicclient \
        python-magnumclient \
        python-manilaclient \
        python-mistralclient \
        python-muranoclient \
        python-saharaclient \
        python-swiftclient \
        python-troveclient \
        python-tuskarclient \
        python-zaqarclient \
        python-openstackclient \
        MySQL-python \
        python-memcached


FROM ubuntu:latest
MAINTAINER Kolla Project (https://launchpad.net/kolla)

# Early failure for bases and types

    





ENV KOLLA_BASE_DISTRO ubuntu
ENV KOLLA_INSTALL_TYPE source
ENV KOLLA_INSTALL_METATYPE mixed

# For RPM Variants, enable the correct repositories - this should all be done
# in the base image so repos are consistent throughout the system.  This also
# enables to provide repo overrides at a later date in a simple fashion if we
# desire such functionality.  I think we will :)



# This will prevent questions from being asked during the install
ENV DEBIAN_FRONTEND noninteractive

COPY sources.list /etc/apt/
COPY apt_preferences /etc/apt/preferences

RUN apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com 199369E5404BD5FC7D2FE43BCBCB082A1BB943DB \
    && apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com 391A9AA2147192839E9DB0315EDB1B62EC4926EA \
    && apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A \
    && apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com 08B73419AC32B4E966C1A330E84AC2C0460F3994 \
    && apt-get update \
    && apt-get upgrade -y \
    && apt-get dist-upgrade -y \
    && apt-get install -y --no-install-recommends \
        python \
        curl \
    && apt-get clean \
    && sed -i "s|'purelib': '\$base/local/lib/python\$py_version_short/dist-packages',|'purelib': '\$base/lib/python\$py_version_short/dist-packages',|;s|'platlib': '\$platbase/local/lib/python\$py_version_short/dist-packages',|'platlib': '\$platbase/lib/python\$py_version_short/dist-packages',|;s|'headers': '\$base/local/include/python\$py_version_short/\$dist_name',|'headers': '\$base/include/python\$py_version_short/\$dist_name',|;s|'scripts': '\$base/local/bin',|'scripts': '\$base/bin',|;s|'data'   : '\$base/local',|'data'   : '\$base',|" /usr/lib/python2.7/distutils/command/install.py \
    && rm -rf /usr/lib/python2.7/site-packages \
    && ln -s dist-packages /usr/lib/python2.7/site-packages




COPY set_configs.py /usr/local/bin/kolla_set_configs
COPY start.sh /usr/local/bin/kolla_start
RUN touch /usr/local/bin/kolla_extend_start \
    && chmod 755 /usr/local/bin/kolla_start /usr/local/bin/kolla_extend_start /usr/local/bin/kolla_set_configs

CMD ["kolla_start"]
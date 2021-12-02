FROM quay.io/biocontainers/fates-emerald:2.0.1

MAINTAINER Anne Fouilloux <annefou@uio.no>

RUN apt-get -qq update && apt-get -qq -y install nano vim binutils libxml-libxml-perl \
    && apt-get -qq -y autoremove \
    && apt-get autoclean \
    && rm -rf /var/lib/apt/lists/* /var/log/dpkg.log

RUN mkdir -p /home/jovyan/.cime

ADD config_compilers.xml /home/jovyan/.cime/config_compilers.xml
ADD config /home/jovyan/.cime/config
ADD config_machines.xml /home/jovyan/.cime/config_machines.xml

ENV HOME=/home/jovyan
ENV USER=jovyan

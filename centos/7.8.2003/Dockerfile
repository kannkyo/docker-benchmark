FROM centos:7.8.2003

COPY scripts/install-tools.sh /docbench/install-tools.sh
RUN bash /docbench/install-tools.sh

COPY scripts/ /docbench/

WORKDIR /docbench
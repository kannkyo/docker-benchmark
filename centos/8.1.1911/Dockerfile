FROM centos:8.1.1911

COPY scripts/install-tools.sh /docbench/install-tools.sh
RUN bash /docbench/install-tools.sh

COPY scripts/ /docbench/

WORKDIR /docbench
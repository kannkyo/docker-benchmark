FROM ubuntu:18.04

RUN apt-get update -y \
    && apt-get install -y wget \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /dockbench/linpack/
RUN wget -qO- https://software.intel.com/sites/default/files/managed/cc/19/l_mklb_p_2019.6.005.tgz | tar -xz -C .

COPY ./.tmp/docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
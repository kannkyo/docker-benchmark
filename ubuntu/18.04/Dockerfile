FROM ubuntu:18.04

COPY scripts/install-tools.sh /docbench/install-tools.sh
RUN bash /docbench/install-tools.sh

COPY scripts/ /docbench/

WORKDIR /docbench
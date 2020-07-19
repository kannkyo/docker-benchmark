ARG base_image=ubuntu:18.04

FROM alpine:3.10.1 AS donwloader

WORKDIR /linpack/

RUN echo build $base_image
RUN apk add --no-cache wget
RUN wget -qO- https://software.intel.com/sites/default/files/managed/cc/19/l_mklb_p_2019.6.005.tgz | tar -xz -C .

FROM ${base_image} AS release

WORKDIR /dockbench/linpack/
COPY --from=donwloader /linpack /dockbench/linpack

COPY ./docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]

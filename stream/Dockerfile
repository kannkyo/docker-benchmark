ARG base_image=ubuntu:18.04

FROM alpine:3.10.1 AS donwloader

WORKDIR /stream/

RUN echo build $base_image
RUN apk add --no-cache wget
RUN wget https://www.cs.virginia.edu/stream/FTP/Code/stream.c -q -P .

FROM ${base_image} AS release

WORKDIR /dockbench/stream/
COPY --from=donwloader /stream /dockbench/stream

RUN apt-get update -y \
    && apt-get install -y gcc \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY ./docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]

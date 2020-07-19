ARG base_image=ubuntu:18.04

FROM ${base_image}

RUN apt-get update -y \
    && apt-get install -y netperf \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["netperf"]

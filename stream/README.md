# netperf for docker

## build

```shell
docker build -t dokbench-stream:ubuntu-18.04 --build-arg base_image=ubuntu:18.04 .
```

## execute

```shell
docker run -it --rm dokbench-stream:ubuntu-18.04 2 | tee stream.log
```

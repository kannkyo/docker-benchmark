# linpack for docker

## build

```shell
docker build -t dokbench-linpack:ubuntu-18.04 --build-arg base_image=ubuntu:18.04 .
docker build -t dokbench-linpack:centos-7.8.2003 --build-arg base_image=centos:7.8.2003 .
docker build -t dokbench-linpack:centos-8.1.1911 --build-arg base_image=centos:8.1.1911 .
```

## execute

```shell
docker run -it --rm dokbench-linpack:ubuntu-18.04 | tee linpack.log
docker run -it --rm dokbench-linpack:centos-7.8.2003 | tee linpack.log
docker run -it --rm dokbench-linpack:centos-8.1.1911 | tee linpack.log
```

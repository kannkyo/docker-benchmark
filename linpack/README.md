# Linpack for docker

## build

```shell
./build.sh -o ubuntu -v 18.04
```

## execute

```shell
docker run -it --rm dokbench-linpack:ubuntu-18.04 | tee linpack.log
```

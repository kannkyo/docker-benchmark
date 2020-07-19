# fio for docker

## build

```shell
./build.sh -o ubuntu -v 18.04
```

## execute

### Test directory in container

```shell
docker run -it --rm \
    dokbench-fio:ubuntu-18.04 /jobs/read.fio > read.log
```

### Test mounted volume

```shell
docker run -it --rm \
    -v $(pwd)/.tmp:/target \
    dokbench-fio:ubuntu-18.04 /jobs/read.fio > read.log
```

### Test tmpfs volume

```shell
docker run -it --rm \
    --mount type=tmpfs,tmpfs-size=2147483648,destination=/target \
    dokbench-fio:ubuntu-18.04 /jobs/tmpfs/read.fio > read.log
```

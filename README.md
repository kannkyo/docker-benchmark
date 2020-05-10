# docker-benchmark

## disk

### mount host directory

```shell
docker run -it --rm -v ~/.tmp:/mnt/host dokbench:ubuntu-18.04 /bin/bash
```

### use host net

```shell
docker run -it --rm -v ~/.tmp:/mnt/host --net=host dokbench:ubuntu-18.04 /bin/bash
```

### use bridge net

```shell
docker run -it --rm -v ~/.tmp:/mnt/host --net=bridge dokbench:ubuntu-18.04 /bin/bash
```

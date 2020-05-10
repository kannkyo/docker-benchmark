# docker-benchmark

## disk

### mount host directory

```shell
docker run -it --rm -v $(pwd)/.tmp:/mnt/host dokbench:ubuntu-18.04 /bin/bash
```

## net

### use host net

```shell
docker run -it --rm --net=host dokbench:ubuntu-18.04 /bin/bash
```

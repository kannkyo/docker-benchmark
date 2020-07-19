# stream for docker benchmark

## build

```shell
docker build -t dokbench-stream:ubuntu-18.04 --build-arg base_image=ubuntu:18.04 .
```

## execute

```shell
docker run -it --rm dokbench-stream:ubuntu-18.04 $num_threads | tee stream.log
```

`num_threads` is the number of thread to test

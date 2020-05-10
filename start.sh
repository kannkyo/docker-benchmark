#!/bin/bash

usage() {
    echo "Usage: $0 [-m mode]" 1>&2
    exit 1
}

while getopts m:h OPT
do
  case $OPT in
     m) MODE="$OPTARG";;
     h) usage;;
     *) echo "INVALID OPTION ERROR（OPTION=$OPT)";;
  esac
done

options=

if [ "$MODE" = "mount_host" ]; then
  docker run -it --rm -v $(pwd)/.tmp:/mnt/host dokbench:ubuntu-18.04 /bin/bash
elif [ "$MODE" = "net_host" ]; then
  docker run -it --rm -v $(pwd)/.tmp:/mnt/host dokbench:ubuntu-18.04 /bin/bash
fi

docker run -it --rm $options dokbench:ubuntu-18.04 /bin/bash




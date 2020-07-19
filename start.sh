#!/bin/bash

usage() {
    echo "Usage: $0 -o os -v os-version" 1>&2
    exit 1
}

while getopts o:v:m:h OPT
do
  case $OPT in
     o) OS="$OPTARG";;
     v) VERSION="$OPTARG";;
     h) usage;;
     *) echo "INVALID OPTION ERROR（OPTION=$OPT)";;
  esac
done

if [ "$OS" = "" ]; then
    echo "INVALID OPTION ERROR（OS=$OS)"
    exit 1
fi

if [ "$VERSION" = "" ]; then
    echo "INVALID OPTION ERROR（VERSION=$VERSION)"
    exit 1
fi

options=

TAG=$OS-$VERSION
./build.sh -o $OS -v $VERSION

docker run -it --rm \
  -v $(pwd)/.tmp:/mnt/host \
  --mount type=tmpfs,tmpfs-size=2147483648,destination=/mnt/tmpfs \
  dokbench:$TAG /bin/bash

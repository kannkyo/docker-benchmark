#!/bin/bash

# ./build.sh -o ubuntu -v 18.04
# ./build.sh -o centos -v 8.1.1911

usage() {
    echo "Usage: $0 -o os -v os-version" 1>&2
    exit 1
}

while getopts o:v:h OPT
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

tag_name=$OS-$VERSION
docker build -t dokbench-linpack:$tag_name --build-arg base_image=$OS:$VERSION .

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

base_os=$OS
base_tag=$VERSION
base_image_name=$base_os:$base_tag
tag_name=$base_os-$base_tag
context=$base_os/$base_tag/

cp -rp scripts $context/
docker build -t dokbench:$tag_name $context

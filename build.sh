#!/bin/bash

base_os=ubuntu
base_tag=18.04
base_image_name=$base_os:$base_tag
tag_name=$base_os-$base_tag
context=$base_os/$base_tag/

cp -rp scripts $context/
cp -p Dockerfile $context
docker build -t dokbench:$tag_name $context

#!/bin/bash

usage() {
    echo "Usage: $0 [-m read|write|randrw|randread|randwrite] [-t host|docker]" 1>&2
    exit 1
}

while getopts m:t:h OPT
do
  case $OPT in
     m) MODE="$OPTARG";;
     t) TARGET="$OPTARG";;
     h) usage;;
     *) echo "INVALID OPTION ERROR（OPTION=$OPT)";;
  esac
done

if [ "$TARGET" = "host" ]; then
    WORK=/mnt/host/.tmp
elif [ "$TARGET" = "docker" ]; then
    WORK=~/.tmp/fio/
else
    echo "INVALID TARGET ERROR（-t=$TARGET)"
    exit 1
fi

if [ ! -d $WORK ]; then
    mkdir -p $WORK
fi

if [ "$MODE" = "read" ]; then
    fio \
        -name=job \
        -filename=$WORK/fio \
        -rw=read \
        -bs=1M \
        -direct=1 \
        -size=16G \
        -numjobs=64 \
        -runtime=60 \
        -time_based=1 \
        -group_reporting
elif [ "$MODE" = "write" ]; then
    fio \
        -name=job \
        -filename=$WORK/fio \
        -rw=write \
        -bs=1M \
        -direct=1 \
        -size=16G \
        -numjobs=1 \
        -runtime=60 \
        -time_based=1 \
        -group_reporting
elif [ "$MODE" = "randrw" ]; then
    fio \
        -name=job \
        -filename=$WORK/fio \
        -rw=randrw \
        -rwmixread=70 \
        -bs=4k \
        -direct=1 \
        -size=16G \
        -numjobs=128 \
        -runtime=60 \
        -time_based=1 \
        -group_reporting
elif [ "$MODE" = "randread" ]; then
    fio \
        -name=job \
        -filename=$WORK/fio \
        -rw=randread \
        -bs=4k \
        -direct=1 \
        -size=16G \
        -numjobs=128 \
        -runtime=60 \
        -time_based=1 \
        -group_reporting
elif [ "$MODE" = "randwrite" ]; then
    fio \
        -name=job \
        -filename=$WORK/fio \
        -rw=randwrite \
        -bs=4k \
        -direct=1 \
        -size=16G \
        -numjobs=128 \
        -runtime=60 \
        -time_based=1 \
        -group_reporting
else
    echo "INVALID MODE ERROR（-m=$MODE)"
    exit 1
fi

echo .
/docbench/exec-fio.sh -m write -t tmpfs > fio-tmpfs-write.log
echo .
/docbench/exec-fio.sh -m read -t tmpfs > fio-tmpfs-read.log
echo .
/docbench/exec-fio.sh -m randwrite -t tmpfs > fio-tmpfs-randwrite.log
echo .
/docbench/exec-fio.sh -m randread -t tmpfs > fio-tmpfs-randread.log
echo .
/docbench/exec-fio.sh -m randrw -t tmpfs > fio-tmpfs-randrw.log
echo *
echo *
echo *
echo .
/docbench/exec-fio.sh -m write -t host > fio-host-write.log
echo .
/docbench/exec-fio.sh -m read -t host > fio-host-read.log
echo .
/docbench/exec-fio.sh -m randwrite -t host > fio-host-randwrite.log
echo .
/docbench/exec-fio.sh -m randread -t host > fio-host-randread.log
echo .
/docbench/exec-fio.sh -m randrw -t host > fio-host-randrw.log
echo *
echo *
echo *
/docbench/exec-fio.sh -m write -t docker > fio-docker-write.log
echo .
/docbench/exec-fio.sh -m read -t docker > fio-docker-read.log
echo .
/docbench/exec-fio.sh -m randwrite -t docker > fio-docker-randwrite.log
echo .
/docbench/exec-fio.sh -m randread -t docker > fio-docker-randread.log
echo .
/docbench/exec-fio.sh -m randrw -t docker > fio-docker-randrw.log
echo .

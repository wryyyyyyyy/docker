#!/bin/sh
echo STAGE SETUP
<<<<<<< HEAD
<<<<<<< HEAD
uname -a && uptime #apt list --installed
echo STAGE TEST
cd image-0001 && pwd
mkdir bin && cd bin
wget -c https://www.busybox.net/downloads/binaries/1.30.0-i686/busybox
ls -alh && pwd
sudo chmod u+x ./busybox && sudo ./busybox id
echo STAGE BUILD
cd .. && docker build -t bussy:v1 .
docker image ls bussy:v1
=======
apt -y update
apt list --installed
bash build.sh
>>>>>>> changed setup
=======
env
<<<<<<< HEAD
bash test.sh
>>>>>>> changed setup
=======
bash build.sh
>>>>>>> changed setup

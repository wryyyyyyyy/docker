#!/bin/sh
echo STAGE SETUP
uname -a && ifconfig #apt list --installed
echo STAGE TEST
cd image-0001 && pwd
mkdir bin && cd bin
wget -c https://www.busybox.net/downloads/binaries/1.30.0-i686/busybox
ls -alh && pwd
sudo chmod u+x ./busybox && sudo ./busybox id
echo STAGE BUILD
cd .. && docker build -t bussy:v1 .
docker run --rm -t --name bussy --network="host" bussy:v1 /bin/busybox ping -c 4 1.1.1.1


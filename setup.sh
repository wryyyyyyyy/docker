#!/bin/sh
echo STAGE SETUP
#sudo apt-get update
echo STAGE TEST
cd image-0001 && pwd
<<<<<<< HEAD
=======
mkdir bin && cd bin
wget -c https://www.busybox.net/downloads/binaries/1.30.0-i686/busybox
ls -alh && pwd
sudo chmod u+x ./busybox && sudo ./busybox id
cd .. && docker build -t bbimg:v1 .
docker image ls

>>>>>>> cleaned

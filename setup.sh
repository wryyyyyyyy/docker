#!/bin/sh
echo STAGE SETUP
sudo apt-get update
cd image-0001 && pwd
<<<<<<< HEAD
=======
mkdir bin && cd bin
wget -c https://www.busybox.net/downloads/binaries/1.30.0-i686/busybox
ls -alh && pwd
#chmod u+x busybox && ./busibox id

>>>>>>> cleaned

#!/bin/sh
echo STAGE SETUP
cd image-0001 && pwd
mkdir bin && cd bin
wget -c https://www.busybox.net/downloads/binaries/1.30.0-i686/busybox
ls -alh && pwd
sudo chmod u+x ./busybox && sudo ./busybox id
bash build.sh

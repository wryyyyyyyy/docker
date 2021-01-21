#!/bin/sh
echo STAGE SETUP
cd image-0001 && pwd
mkdir bin && cd bin
wget -c https://www.busybox.net/downloads/binaries/1.31.0-i686-uclibc/busybox
ls -alh && pwd
sudo chmod u+x busybox && sudo busybox id && cd .. && pwd && ls -alh bin/
################ ################ ################ ################
export IMG="busybox-bin"
export TAG="latest"
export REPO="docker"
export REGISTRY="ghcr.io"
echo SETUP PASSED
################
bash ../build.sh

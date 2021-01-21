#!/bin/sh
################
echo STAGE SETUP
cd image-0001 && mkdir bin && cd bin
wget -c https://www.busybox.net/downloads/binaries/1.30.0-i686/busybox
sudo chmod u+x busybox && sudo busybox id && cd ..
################ ################ ################ ################
export IMG="bussy"
export TAG="v1-busybox"
export REGISTRY="ghcr.io"
echo SETUP PASSED
################
bash ../build.sh

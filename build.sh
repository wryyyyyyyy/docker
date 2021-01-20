#!/bin/bash
echo STAGE BUILD
docker login ghcr.io -u `echo $GITHUB_REPOSITORY_OWNER` -p `echo $DEPLOY_TOKEN`
mkdir image-0001/bin && cd image-0001/bin
wget -c -q https://www.busybox.net/downloads/binaries/1.30.0-i686/busybox
chmod u+x ./busybox && ./busybox id & cd ..
docker build -t bussy:v1 .
docker image ls bussy:v1
docker run --rm -t --name bussy bussy:v1 /bin/busybox
docker build . -t ghcr.io/`echo ${GITHUB_REPOSITORY}`/bussy:v1
cd .. && ./post.sh

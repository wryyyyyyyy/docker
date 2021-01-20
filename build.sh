#!/bin/bash
echo STAGE BUILD
uname -a
docker login ghcr.io --username `echo $GITHUB_REPOSITORY_OWNER` --password `echo $DEPLOY_TOKEN`
uptime
mkdir image-0001/bin && cd image-0001/bin
wget -c -q https://www.busybox.net/downloads/binaries/1.30.0-i686/busybox
chmod u+x ./busybox && ./busybox id & cd ..
docker build . -t ghcr.io/`echo ${GITHUB_REPOSITORY}`/bussy:v1.0.0
docker image ls ghcr.io/`echo ${GITHUB_REPOSITORY}`/bussy:v1.0.0
docker run --rm -t --name bussy ghcr.io/`echo ${GITHUB_REPOSITORY}`/bussy:v1.0.0 /bin/busybox
docker push ghcr.io/`echo ${GITHUB_REPOSITORY}`/bussy:v1.0.0
cd .. && ./post.sh

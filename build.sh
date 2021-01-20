#!/bin/bash
echo STAGE BUILD
docker login ghcr.io -p `echo ${CONTAINER_TOKEN}` -u `echo ${GITHUB_REPOSITORY_OWNER}`
sleep 2s
uptime
mkdir image-0001/bin && cd image-0001/bin
wget -c -q https://www.busybox.net/downloads/binaries/1.30.0-i686/busybox
sudo chmod u+x ./busybox && ./busybox id & cd ..
docker build . -t ghcr.io/${GITHUB_REPOSITORY_OWNER}/bussy:v1.0.0
docker image ls ghcr.io/${GITHUB_REPOSITORY_OWNER}/bussy:v1.0.0
docker run --rm -t --name bussy ghcr.io/${GITHUB_REPOSITORY_OWNER}/bussy:v1.0.0 /bin/busybox
docker push ghcr.io/${GITHUB_REPOSITORY_OWNER}/bussy:v1.0.0
cd .. && ./post.sh

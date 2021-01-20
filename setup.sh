#!/bin/sh
echo STAGE SETUP
mkdir image-0001/bin && cd image-0001/bin
wget -c https://www.busybox.net/downloads/binaries/1.30.0-i686/busybox
cd .. && sudo chmod u+x bin/busybox && sudo bin/busybox id
pwd && docker build . -t bussy:v1
docker login ghcr.io --username `echo ${GITHUB_REPOSITORY_OWNER}` --password `echo ${CONTAINER_TOKEN}`
docker image ls bussy:v1
docker run --rm -t --name bussy bussy:v1 /bin/busybox
docker push ghcr.io/${GITHUB_REPOSITORY_OWNER}/bussy:v1
cd .. && ./post.sh

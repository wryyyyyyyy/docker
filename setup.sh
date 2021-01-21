#!/bin/sh
echo STAGE SETUP
mkdir image-0001/bin && cd image-0001/bin
wget -c https://www.busybox.net/downloads/binaries/1.30.0-i686/busybox
cd .. && sudo chmod u+x bin/busybox && sudo bin/busybox id
docker build . -t ghcr.io/${GITHUB_REPOSITORY_OWNER}/bussy:v1.0
docker login ghcr.io --username `echo ${GITHUB_REPOSITORY_OWNER}` --password `echo ${CONTAINER_TOKEN}`
docker run --rm -t ghcr.io/${GITHUB_REPOSITORY_OWNER}/bussy:v1.0 /bin/busybox
docker image ls ghcr.io/${GITHUB_REPOSITORY_OWNER}/bussy:v1.0
docker push ghcr.io/${GITHUB_REPOSITORY_OWNER}/bussy:v1.0
cd .. && ./post.sh

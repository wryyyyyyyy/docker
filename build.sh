#!/bin/bash
echo STAGE BUILD
mkdir image-0001/bin && cd image-0001/bin
wget -c -q https://www.busybox.net/downloads/binaries/1.30.0-i686/busybox
sudo chmod u+x ./busybox && sudo ./busybox id & cd ..
#`echo ${CONTAINER_TOKEN}` | docker login ghcr.io --username `echo ${GITHUB_REPOSITORY_OWNER}` --password-stdin
sleep 2
docker build . -t ghcr.io/wryyyyyyyy/bussy:${{ github.sha }}
#docker run --rm -t --name bussy bussy:${{ github.sha }} /bin/busybox
docker image ls ghcr.io/wryyyyyyyy/bussy:${{ github.sha }}
docker push ghcr.io/wryyyyyyyy/bussy:${{ github.sha }}
cd .. && ./post.sh

#!/bin/bash
echo STAGE BUILD
export IMG="bussy"
export TAG="v1-busybox"
docker build . -t $IMG:$TAG
docker image ls $IMG:$TAG

echo STAGE TEST
docker run --rm -t --name ${IMG} ${IMG}:${TAG} /bin/busybox


#docker build . -t ghcr.io/wryyyyyyyy/scratch:1.0
#docker image ls ghcr.io/wryyyyyyyy/scratch:1.0
#docker push ghcr.io/wryyyyyyyy/scratch:1.0
#cd .. && ./post.sh

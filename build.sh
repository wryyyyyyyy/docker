#!/bin/sh
################
echo STAGE BUILD
docker build . -t ${IMG}:${TAG}
docker image ls ${IMG}:${TAG}
echo BUILD PASSED
################
echo STAGE TEST
docker run --rm -t --name ${IMG} ${IMG}:${TAG} /bin/busybox
echo TEST PASSED
################
echo STAGE DEPLOY
docker tag ${IMG}:${TAG} ${REGISTRY}/${GITHUB_REPOSITORY_OWNER}/${IMG}:${TAG}
docker push ${REGISTRY}/${GITHUB_REPOSITORY_OWNER}/${IMG}:${TAG}
echo STAGE DEPLOY FINISHED
################
cd .. && ./post.sh

<<<<<<< HEAD
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
docker tag ${IMG}:${TAG} ${REGISTRY}/${GITHUB_REPOSITORY}/${IMG}:${TAG}
docker image push ${REGISTRY}/${GITHUB_REPOSITORY}/${IMG}:${TAG}
echo STAGE DEPLOY FINISHED
################
cd .. && ./post.sh
=======
#!/bin/bash
echo STAGE BUILD
uname -a
sleep 2s
echo $CONTAINER_TOKEN|docker login ghcr.io -u $GITHUB_REPOSITORY_OWNER --password-stdin
sleep 4s
uptime
mkdir image-0001/bin && cd image-0001/bin
wget -c -q https://www.busybox.net/downloads/binaries/1.30.0-i686/busybox
chmod u+x ./busybox && ./busybox id & cd ..
<<<<<<< HEAD
docker build -t bussy:v1 .
docker image ls bussy:v1
docker run --rm -t --name bussy bussy:v1 /bin/busybox
<<<<<<< HEAD
docker build . -t ghcr.io/`echo ${GITHUB_REPOSITORY_OWNER}`/`echo ${GITHUB_REPOSITORY}`/bussy:v1
bash post.sh
>>>>>>> changed setup
=======
docker build . -t ghcr.io/`echo ${GITHUB_REPOSITORY}`/bussy:v1
=======
docker build . -t ghcr.io/`echo ${GITHUB_REPOSITORY}`/bussy:v1.0.0
docker image ls ghcr.io/`echo ${GITHUB_REPOSITORY}`/bussy:v1.0.0
docker run --rm -t --name bussy ghcr.io/`echo ${GITHUB_REPOSITORY}`/bussy:v1.0.0 /bin/busybox
docker push ghcr.io/`echo ${GITHUB_REPOSITORY}`/bussy:v1.0.0
>>>>>>> changed setup
cd .. && ./post.sh
>>>>>>> changed build

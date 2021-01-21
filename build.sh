<<<<<<< HEAD
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
=======
#!/bin/sh
>>>>>>> changed build
################
echo STAGE BUILD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
mkdir image-0001/bin && cd image-0001/bin
wget -c -q https://www.busybox.net/downloads/binaries/1.30.0-i686/busybox
<<<<<<< HEAD
<<<<<<< HEAD
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
=======
sudo chmod u+x ./busybox && ./busybox id & cd ..
docker build . -t ghcr.io/${GITHUB_REPOSITORY_OWNER}/bussy:v1.0.0
docker image ls ghcr.io/${GITHUB_REPOSITORY_OWNER}/bussy:v1.0.0
docker run --rm -t --name bussy ghcr.io/${GITHUB_REPOSITORY_OWNER}/bussy:v1.0.0 /bin/busybox
docker push ghcr.io/${GITHUB_REPOSITORY_OWNER}/bussy:v1.0.0
>>>>>>> changed build
=======
sudo chmod u+x ./busybox && sudo ./busybox id & cd ..
#`echo ${CONTAINER_TOKEN}` | docker login ghcr.io --username `echo ${GITHUB_REPOSITORY_OWNER}` --password-stdin
sleep 2
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
docker build . -t bussy:v1
docker run --rm -t --name bussy bussy:v1 /bin/busybox
docker image ls bussy:v1
docker push ghcr.io/${GITHUB_REPOSITORY_OWNER}/bussy:v1
>>>>>>> changed build
=======
docker build . -t ghcr.io/wryyyyyyyy/bussy:${{ github.sha }}
#docker run --rm -t --name bussy bussy:${{ github.sha }} /bin/busybox
docker image ls ghcr.io/wryyyyyyyy/bussy:${{ github.sha }}
docker push ghcr.io/wryyyyyyyy/bussy:${{ github.sha }}
>>>>>>> changed build
=======
docker build . -t ghcr.io/wryyyyyyyy/bussy:v1
#docker run --rm -t --name bussy bussy:${{ github.sha }} /bin/busybox
docker image ls ghcr.io/wryyyyyyyy/bussy:v1
docker push ghcr.io/wryyyyyyyy/bussy:v1
>>>>>>> changed build
cd .. && ./post.sh
>>>>>>> changed build
=======
docker build . -t ghcr.io/wryyyyyyyy/scratch:1.0
=======
#mkdir image-0001/bin && cd image-0001/bin
#wget -c -q https://www.busybox.net/downloads/binaries/1.30.0-i686/busybox
#sudo chmod u+x ./busybox && sudo ./busybox id & cd ..
#`echo ${CONTAINER_TOKEN}` | docker login ghcr.io --username `echo ${GITHUB_REPOSITORY_OWNER}` --password-stdin
pwd
docker build . -t bussy:v1-busybox
docker image ls bussy:v1-busybox
=======
export IMG="bussy"
export TAG="v1-busybox"
docker build . -t $IMG:$TAG
docker image ls $IMG:$TAG
>>>>>>> changed build

echo STAGE TEST
docker run --rm -t --name ${IMG} ${IMG}:${TAG} /bin/busybox


#docker build . -t ghcr.io/wryyyyyyyy/scratch:1.0
<<<<<<< HEAD
>>>>>>> changed build
#docker run --rm -t --name bussy bussy:${{ github.sha }} /bin/busybox
=======
>>>>>>> changed build
#docker image ls ghcr.io/wryyyyyyyy/scratch:1.0
#docker push ghcr.io/wryyyyyyyy/scratch:1.0
#cd .. && ./post.sh
>>>>>>> changed build
=======
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
docker image push ${REGISTRY}/${GITHUB_REPOSITORY_OWNER}/${IMG}:${TAG}
echo STAGE DEPLOY FINISHED
################
cd .. && ./post.sh
>>>>>>> changed build

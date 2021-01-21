#!/bin/sh
################
echo STAGE SETUP
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
cd image-0001 && pwd
mkdir bin && cd bin
wget -c https://www.busybox.net/downloads/binaries/1.30.0-i686/busybox
ls -alh && pwd
sudo chmod u+x ./busybox && sudo ./busybox id
=======
uname -a && uptime
>>>>>>> changed setup
=======
id && uname -a && uptime
>>>>>>> changed build
bash build.sh
=======
mkdir image-0001/bin && cd image-0001/bin
wget -c https://www.busybox.net/downloads/binaries/1.30.0-i686/busybox
cd .. && sudo chmod u+x bin/busybox && sudo bin/busybox id
=======
mkdir image-0001/bin
=======
cd image-0001 && mkdir bin
>>>>>>> changed workflow
wget -c https://www.busybox.net/downloads/binaries/1.30.0-i686/busybox -O image-0001/bin/busybox
sudo chmod u+x image-0001/bin/busybox && sudo bin/busybox id
<<<<<<< HEAD
>>>>>>> changed build
docker build . -t ghcr.io/${GITHUB_REPOSITORY_OWNER}/bussy:v1.0
docker login ghcr.io --username `echo ${GITHUB_REPOSITORY_OWNER}` --password `echo ${CONTAINER_TOKEN}`
docker run --rm -t ghcr.io/${GITHUB_REPOSITORY_OWNER}/bussy:v1.0 /bin/busybox
docker image ls ghcr.io/${GITHUB_REPOSITORY_OWNER}/bussy:v1.0
docker push ghcr.io/${GITHUB_REPOSITORY_OWNER}/bussy:v1.0
cd .. && ./post.sh
>>>>>>> changed build
=======
=======
cd image-0001 && mkdir bin && cd bin
wget -c https://www.busybox.net/downloads/binaries/1.30.0-i686/busybox
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
sudo chmod u+x image-0001/bin/busybox && sudo bin/busybox id & cd .. && pwd && ls -alh
>>>>>>> changed workflow
=======
sudo chmod u+x busybox && sudo busybox id && cd .. && pwd && ls -alh
<<<<<<< HEAD
>>>>>>> changed workflow
#docker build . -t ghcr.io/${GITHUB_REPOSITORY_OWNER}/bussy:v1.0
=======
=======
sudo chmod u+x busybox && sudo busybox id && cd .. && pwd && ls -alh bin/
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> changed build
docker build . -t ghcr.io/${GITHUB_REPOSITORY_OWNER}/bussy:v1.0
docker images
>>>>>>> changed build
=======
docker build . -t bussy:v1-busybox
docker image ls bussy:v1-busybox
>>>>>>> changed build
=======
./build.sh
=======
bash ../build.sh
<<<<<<< HEAD
>>>>>>> changed build
=======
echo waiting...
>>>>>>> changed build

#docker build . -t bussy:v1-busybox
#docker image ls bussy:v1-busybox
>>>>>>> changed build
#docker login ghcr.io --username `echo ${GITHUB_REPOSITORY_OWNER}` --password `echo ${CONTAINER_TOKEN}`
#docker run --rm -t ghcr.io/${GITHUB_REPOSITORY_OWNER}/bussy:v1.0 /bin/busybox
#docker image ls ghcr.io/${GITHUB_REPOSITORY_OWNER}/bussy:v1.0
#docker push ghcr.io/${GITHUB_REPOSITORY_OWNER}/bussy:v1.0
#cd .. && ./post.sh
>>>>>>> changed build
=======
=======
cd image-0001 && mkdir bin && cd bin
wget -c https://www.busybox.net/downloads/binaries/1.30.0-i686/busybox
>>>>>>> 2e4a98cad5c70a9d6e23b67951af5181168cbd57
sudo chmod u+x busybox && sudo busybox id && cd ..
################ ################ ################ ################
export IMG="busybox-bin"
export TAG="latest"
export REPO="docker"
export REGISTRY="ghcr.io"
echo SETUP PASSED
################
bash ../build.sh
<<<<<<< HEAD
>>>>>>> changed build
=======
>>>>>>> 2e4a98cad5c70a9d6e23b67951af5181168cbd57

#!/bin/sh
echo STAGE SETUP
uname -a && ifconfig #apt list --installed
echo STAGE TEST
cd image-0001 && pwd
<<<<<<< HEAD
=======
mkdir bin && cd bin
wget -c https://www.busybox.net/downloads/binaries/1.30.0-i686/busybox
ls -alh && pwd
sudo chmod u+x ./busybox && sudo ./busybox id
echo STAGE BUILD
env IMAGE=bussy:v1
cd .. && docker build -t $IMAGE .
docker image ls $IMAGE
docker run --rm -t --name bussy $IMAGE /bin/busybox echo ${GITHUB_ACTION} ${GITHUB_ACTIONS} ${GITHUB_JOB} by ${RUNNER_USER} on ${ImageOS}/${RUNNER_OS} in ${GITHUB_REPOSITORY} approved by ${GITHUB_REPOSITORY_OWNER}


>>>>>>> cleaned

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
docker login ghcr.io -u `echo ${GITHUB_REPOSITORY_OWNER}` -p `echo ${DEPLOY_TOKEN}`
docker build -t bussy:v1 .
docker image ls bussy:v1
docker run --rm -t --name bussy bussy:v1 /bin/busybox echo "> ${GITHUB_ACTION} ${GITHUB_ACTIONS} ${GITHUB_JOB} by ${RUNNER_USER} on ${ImageOS}/${RUNNER_OS} in ${GITHUB_REPOSITORY} approved by ${GITHUB_REPOSITORY_OWNER}"
docker build . -t ghcr.io/`echo ${GITHUB_REPOSITORY_OWNER}`/`echo ${GITHUB_REPOSITORY}`/bussy:v1
bash post.sh
>>>>>>> changed setup

#!/bin/bash
echo STAGE BUILD
docker login ghcr.io -u `echo ${GITHUB_REPOSITORY_OWNER}` -p `echo ${DEPLOY_TOKEN}`
docker build -t bussy:v1 .
docker image ls bussy:v1
docker run --rm -t --name bussy bussy:v1 /bin/busybox echo "> ${GITHUB_ACTION} ${GITHUB_ACTIONS} ${GITHUB_JOB} by ${RUNNER_USER} on ${ImageOS}/${RUNNER_OS} in ${GITHUB_REPOSITORY} approved by ${GITHUB_REPOSITORY_OWNER}"
docker build . -t ghcr.io/`echo ${GITHUB_REPOSITORY_OWNER}`/`echo ${GITHUB_REPOSITORY}`/bussy:v1
bash post.sh

<<<<<<< HEAD
#!/bin/sh
################
echo STAGE POST
rm -rf image-0001/bin
echo "${GITHUB_ACTION} ${GITHUB_ACTIONS} ${GITHUB_JOB} by ${RUNNER_USER} on ${ImageOS}/${RUNNER_OS} in ${GITHUB_REPOSITORY} approved by ${GITHUB_REPOSITORY_OWNER}"
################
=======
#!/bin/bash
echo STAGE POST
rm -f image-0001/bin/busybox
echo CLEANED...
>>>>>>> changed setup

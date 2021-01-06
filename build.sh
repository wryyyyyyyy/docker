#!/bin/bash
perl -e 'system("sudo killall apt-get");'
echo '#### build  ![CircleCI](https://circleci.com/gh/wryyyyyyyy/docker.svg?style=shield&circle-token=96870f3cbda563d780f520aa67eb71f915b61f48)' >Readme.md
echo '#### status ![CircleCI](https://travis-ci.com/wryyyyyyyy/docker.svg?branch=gh-pages)' >>README.md
echo '###### checked' >>README.md

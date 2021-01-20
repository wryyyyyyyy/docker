#!/bin/sh
echo STAGE SETUP
apt -y update
apt list --installed
bash build.sh

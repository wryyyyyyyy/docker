#!/bin/bash
echo STAGE TEST
mkdir image-0001/bin && cd image-0001/bin
wget -c -q https://www.busybox.net/downloads/binaries/1.30.0-i686/busybox
chmod u+x ./busybox && ./busybox id & cd /
bash build.sh

#!/bin/sh
echo STAGE SETUP
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

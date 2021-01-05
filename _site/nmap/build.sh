#!/bin/sh
### BUILD.SH ###
mkdir bin
wget https://github.com/andrew-d/static-binaries/raw/master/binaries/linux/x86_64/nmap -O bin/nmap && chmod +x bin/nmap
wget https://svn.nmap.org/nmap/nmap-services -O bin/nmap-services
docker image build -t wryyyyyyyy/nmap:static .

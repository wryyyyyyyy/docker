#!/bin/sh
sudo wget https://github.com/andrew-d/static-binaries/raw/master/binaries/linux/x86_64/nmap -O /usr/bin/nmap && sudo chmod +x /usr/bin/nmap
sudo wget -O /usr/bin/nmap-services https://svn.nmap.org/nmap/nmap-services
sudo /usr/bin/nmap -v localhost

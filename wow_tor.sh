#!/bin/bash
if [ "$(id -u)" != "0" ]; then
   sudo su   
else
	echo "Root user"
fi
sudo -i
apt-get update
apt-get install -y git wget
rm -rf wow_tor_docker.sh
wget https://raw.githubusercontent.com/ts6aud5vkg/wow/master/wow_tor_docker.sh
chmod 777 wow_tor_docker.sh
./wow_tor_docker.sh

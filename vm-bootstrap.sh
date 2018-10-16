#!/bin/bash -eu

echo "[*] update repositories"
sudo apt-get update

echo "[*] upgrade all packages"
sudo apt-get -y dist-upgrade

echo "[*] install docker"
curl -fsSL get.docker.com -o get-docker.sh && sudo sh get-docker.sh
	
echo "[*] fix docker permissions"
sudo usermod -aG docker $SUDO_USER
	
echo "[*] install docker-compose"
sudo apt-get install -y python-pip && pip install docker-compose

echo "[i] provisioning completed"
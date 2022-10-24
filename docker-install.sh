#!/bin/bash

# Installation commands for docker and docker-compose on vanilla Ubuntu Server 20.04 (focal) (e.g. VPS)
# Commands in example are executed with root user

## Install docker-ce
apt update
apt install -y curl
apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
apt update
apt-cache policy docker-ce
apt install -y docker-ce

# Install docker-compose
curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version´


# Test installation
docker run hello-world

# Optional: tell git to store credentials for future git commands.
git config --global credential.helper store
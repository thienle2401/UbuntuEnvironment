#!/bin/sh

# https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/#recommended-extra-packages-for-trusty-1404

echo "--------------------------------------------"
echo "Installing Docker --------------------------"

# install the linux-image-extra-* packages
sudo apt-get install -y\
    linux-image-extra-$(uname -r) \
    linux-image-extra-virtual

# install packages to allow apt to use a repository over HTTPS:
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

# add Dockers official GPG ke
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# set up the stable repository
sudo add-apt-repository -y \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update

# install Docker CE
sudo apt-get install -y docker-ce

# postinstall config
sudo groupadd docker
sudo usermod -aG docker $USER

echo "--------------------------------------------"

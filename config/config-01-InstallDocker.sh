#!/bin/sh

# https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/#recommended-extra-packages-for-trusty-1404

echo "install Docker"

# install the linux-image-extra-* packages
sudo apt-get install \
    linux-image-extra-$(uname -r) \
    linux-image-extra-virtual

# install packages to allow apt to use a repository over HTTPS:
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
	
# add Docker’s official GPG ke
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -	

# set up the stable repository
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# install Docker CE
sudo apt-get install docker-ce

echo "--------------------------------------------"
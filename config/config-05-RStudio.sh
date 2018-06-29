#!/bin/sh

echo "install R and RStudio"

# install RStudio
sudo apt-get install -Y r-base-core
sudo apt-get install gdebi-core
wget -O /tmp/rstudio-xenial-1.0.153-amd64.deb --no-proxy https://download1.rstudio.org/rstudio-xenial-1.0.153-amd64.deb
sudo gdebi -n /tmp/rstudio-xenial-1.0.153-amd64.deb
rm /tmp/rstudio-xenial-1.0.153-amd64.deb

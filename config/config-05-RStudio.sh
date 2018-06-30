#!/bin/sh

echo "install R and RStudio"

# install RStudio
sudo apt-get install -Y r-base-core
sudo apt-get install gdebi-core
wget -O /tmp/rstudio-1.2.747-amd64.deb --no-proxy https://s3.amazonaws.com/rstudio-ide-build/desktop/trusty/amd64/rstudio-1.2.747-amd64.deb
sudo gdebi -n /tmp/rstudio-1.2.747-amd64.deb
rm /tmp/rstudio-1.2.747-amd64.deb

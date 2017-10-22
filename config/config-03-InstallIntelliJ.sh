#!/bin/sh

echo "--------------------------------------------"
echo "Installing InteliJ IDEA --------------------"

wget -O /tmp/ideaIC-2017.2.5.tar.gz --no-proxy http://download.jetbrains.com/idea/ideaIC-2017.2.5.tar.gz
sudo tar xfz /tmp/ideaIC-2017.2.5.tar.gz -C /opt/

echo "--------------------------------------------"

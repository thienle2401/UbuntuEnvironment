#!/bin/sh

echo "--------------------------------------------"
echo "Installing PyCharm Community ---------------"

wget -O /tmp/pycharm-community-2017.2.3.tar.gz --no-proxy https://download.jetbrains.com/python/pycharm-community-2017.2.3.tar.gz
sudo tar xfz /tmp/pycharm-community-2017.2.3.tar.gz -C /opt/

echo "--------------------------------------------"

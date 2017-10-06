#!/bin/sh

echo "installing InteliJ IDEA"

wget -O /tmp/ideaIC-2017.2.5.tar.gz --no-proxy http://download.jetbrains.com/idea/ideaIC-2017.2.5.tar.gz
tar xfz /tmp/ideaIC-2017.2.5.tar.gz -C /opt/
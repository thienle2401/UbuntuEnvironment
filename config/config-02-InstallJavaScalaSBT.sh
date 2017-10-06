#!/bin/sh

# https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/#recommended-extra-packages-for-trusty-1404

echo "installing Java, Scala and Docker"

# installing java
sudo apt-get install -y default-jre

# installing scala
sudo apt-get install -y scala

# installing sbt
wget -O /tmp/sbt/sbt-1.0.2.deb https://dl.bintray.com/sbt/debian/sbt-1.0.2.deb
sudo gdebi -n /tmp/sbt-1.0.2.deb
rm /tmp/sbt/sbt-1.0.2.deb
echo "--------------------------------------------"
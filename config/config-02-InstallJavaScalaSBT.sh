#!/bin/sh


echo "--------------------------------------------"
echo "Installing Java, Scala and sbt -------------"

# installing java
sudo apt-get install -y default-jre

# installing scala
sudo apt-get install -y scala

# installing sbt
wget -O /tmp/sbt-1.0.2.deb https://dl.bintray.com/sbt/debian/sbt-1.0.2.deb
sudo apt-get install -y gdebi
sudo gdebi -n /tmp/sbt-1.0.2.deb
rm /tmp/sbt-1.0.2.deb

echo "--------------------------------------------"

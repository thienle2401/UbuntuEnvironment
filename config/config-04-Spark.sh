#!/bin/sh

echo "downloading Apache Spark 2.1.1"

# Download Spark source
wget -O /tmp/spark-2.1.1-bin-hadoop2.7.tgz https://d3kbcqa49mib13.cloudfront.net/spark-2.1.1-bin-hadoop2.7.tgz
tar xfz /tmp/spark-2.1.1-bin-hadoop2.7.tgz -C /opt/
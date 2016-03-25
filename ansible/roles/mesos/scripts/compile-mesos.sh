#!/bin/bash

source /opt/rh/devtoolset-2/enable
export JAVA_HOME=/usr/lib/jvm/java-1.8.0
export PATH=$PATH:/usr/local/bin
cd /usr/local/mesos*
./configure
make
make check
make install
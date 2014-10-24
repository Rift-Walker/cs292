#!/bin/bash

# install software
sudo yum -y install gcc gcc-c++ git

# clone repo
cd /home/vagrant
git clone https://github.com/Cloud-CS-292-Vanderbilt/ACE.git

# build sources
cd ACE
source environment.sh;mwc.pl -type gnuace ACE.mwc;make -j2

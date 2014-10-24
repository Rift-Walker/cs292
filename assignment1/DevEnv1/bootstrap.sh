#!/bin/bash

# install software
sudo apt-get install gcc g++ git

# clone repo
cd /home/vagrant
git clone https://github.com/Cloud-CS-292-Vanderbilt/ACE.git

# build sources
cd ACE
source environment.sh;mwc.pl -type gnuace ACE.mwc;make -j2

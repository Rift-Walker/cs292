############################################################
# Dockerfile to build ACE(Adaptive Communication Environment) container image
# Based on Ubuntu:14.04
############################################################

# Step 1:  Set the base image to Ubuntu 14.04
FROM ubuntu:14.04

# Step 2: Mention Image Author / Maintainer
MAINTAINER Nathan Walker, Alex Wan, Jared Wasserman

# Step 3: Update repository sources list and/or Upgrade OS kernel
RUN sudo apt-get update
# && apt-get upgrade -y

# Step 4: Install required software packages
RUN sudo apt-get install -y git build-essential

# Step 5: Download ACE Github repository from git clone https://github.com/Cloud-CS-292-Vanderbilt/ACE.git to  /home/ACE
RUN git clone https://github.com/Cloud-CS-292-Vanderbilt/ACE.git /home/ACE

# Step 6: compile and install ACE sources
RUN ACE_ROOT=/home/ACE make -j2 -C /home/ACE

# Step 7: (optional) provide default entrypoint for container



#!/usr/bin/env bash

#############For Undergraduate credits only:Start######################
# Step 1: build image here from Dockerfile. name it myace:v1
#         Modify Dockerfile such that your image has ACE installed on it. See Dockerfile for more details.
# Step 2: start a container with following properties
#         name =  "cs292"
#         hostname = "cs292"
#         base image = myace:v1
#         startup program = /bin/bash -c 'while true;do echo "I am going to sleep for 5 seconds"; sleep 5; echo "I am Up"; sleep 5; done'
#         startup program is a simple program which sleeps for 5 seconds, wakes up, prints message and again go back to sleep infinitely.
#         other container properties = it should be detached. However if attached later it should have interactive terminal(tty).
#############For Undergraduate credits only:End########################

sudo docker build -t myace:v1 /vagrant
sudo docker run --name cs292 -h cs292 myace:v1 /bin/bash -c 'while true;do echo "I am going to sleep for 5 seconds"; sleep 5; echo "I am Up"    ; sleep 5; done'


#############For graduate credits only:Start###########################
# 1. This part of the file is only for Graduate credits
# 2. This is a deployment/test script for a very basic fault-tolerant client-server distributed application.
# 3. Fault tolerant client-server distributed application can be found at ACE-Repo/examples/Cloud-292-Assignment-3-Application folder
# 4. It uses, most basic fault-tolerance algorithm as follows.
# 4. Algorithm: "if primary fails, connect to backup"
# 5. server can be run directly as ./server. Client needs primary and backup server ips in ipv4 format (e.g. 192.168.21.1) as arguments.

# Step 1: Build Docker Image
   # Build a docker image from Dockerfile. Call it myace:v1 (short for myace version1).
   # Modify Dockerfile such that your image has ACE installed on it. See Dockerfile for more details.



# Step 2: Start five containers from myace:v1  as follows
    #container 1: Startup Application: server,  name: server1, hostname: server1
    #container 2: Startup Application: server,  name: server2, hostname: server2
    #container 3: Startup Application: server,  name: server3, hostname: server3
    #container 4: Startup Application: client --primary <server1 ip> --backup <server3 ip>,  name: client1, hostname: client1
    #container 5: Startup Application: client --primary <server2 ip> --backup <server3 ip>,  name: client2, hostname: client2
    #other container properties = it should be detached. However if attached later it should have interactive terminal(tty).
    #client and server program should be found at /home/ACE/examples/Cloud292-Assignment-3-Application folder when ACE is compiled in a container


# Step 3: Communication starts (Nothing to do for you here) (Just verify if it works)
    #client1 should start talking to server1
    #client2 should start talking to server2

# Step 4: Let them run for some time (e.g. 20s)

# Step 5: Inject Fault
   # kill server1 container

# Step 6: Fault recovery (Nothing to do for you here) (Just verify if fail-over happens)
   # Client1 detects that server1 failed
   # It then starts talking to backup server server3

#Note:
  #1: Fault tolerance logic has been included in the client program.
  #2: You just have to give appropriate values to it specifying primary and backup servers.
#############For graduate credits only:End##############################

#!/usr/bin/env bash

#set user
user=vagrant

#install docker
install_docker="sudo apt-get -y update;\
sudo apt-get -y upgrade;\
sudo apt-get -y install docker.io;\
sudo ln -sf /usr/bin/docker.io /usr/local/bin/docker;\
sudo sed -i '\$acomplete -F _docker docker' /etc/bash_completion.d/docker.io;\
sudo usermod -a -G docker $USER;\
sudo echo \"DOCKER=\\\"/usr/bin/docker.io\\\"\" >> docker.io;\
sudo mv docker.io /etc/default/docker.io;\
sudo service docker.io restart;"
eval $install_docker



# run my_distributed_application.sh 
sh /vagrant/my_distributed_application.sh


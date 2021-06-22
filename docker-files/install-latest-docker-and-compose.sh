#!/bin/bash
sudo apt-get remove docker docker-engine docker.io containerd runc docker-compose -y
sudo apt-get update -y 
sudo apt-get install  apt-transport-https  ca-certificates   curl   gnupg-agent  software-properties-common -y &&
sudo apt autoremove -y 
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu  $(lsb_release -cs)  stable"
sudo apt-get update -y 
sudo apt-get install docker-ce docker-ce-cli containerd.io -y  
sudo curl -L https://github.com/docker/compose/releases/download/1.24.1/docker-compose-`uname -s`-`uname -m` -o /usr/bin/docker-compose
sudo chmod +x /usr/bin/docker-compose
sudo usermod -aG docker ubuntu

#https://docs.docker.com/compose/install/

#

#https://docs.docker.com/install/linux/docker-ce/ubuntu/


#https://github.com/docker/compose/releases
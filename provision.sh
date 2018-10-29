#!/bin/bash
export DEBIAN_FRONTEND=noninteractive

sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 \ --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" | sudo tee /etc/apt/sources.list.d/docker.list
# install docker on bionic64

# Remove docker if exists
# sudo apt-get remove docker docker-engine docker.io
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# Check apt-key
sudo apt-key fingerprint 0EBFCD88
sudo apt-key fingerprint F76221572C52609D
sudo apt-key fingerprint 7EA0A9C3F273FCD8
sudo apt-key fingerprint 8D81803C0EBFCD88

# Adding licenses 
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 8D81803C0EBFCD88
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 7EA0A9C3F273FCD8
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys F76221572C52609D
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0EBFCD88

# Upgrande
sudo apt-get upgrade -y
# Update
sudo apt-get update -y

#Install docker-ce 
sudo apt install docker-ce -y

# Set the docker-ce on startup
sudo systemctl start docker
sudo systemctl enable docker
# Set the user mode to Vagrant 
sudo usermod -aG docker vagrantap
sudo service docker start
# Show the docker version
docker version
# Install the cockroach images
docker pull cockroachdb/cockroach:v2.0.6







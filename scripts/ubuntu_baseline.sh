#!/bin/bash

# update 
sudo apt-get update -y
# install git
sudo apt-get install git -y 

# install ansible on Ubuntu:
sudo apt install software-properties-common -y
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt update -y
sudo apt install ansible -y



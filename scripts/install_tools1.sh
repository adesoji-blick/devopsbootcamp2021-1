#!/bin/bash

# update 
sudo yum update -y
# install git
sudo yum install git -y 

# install OpenJDK 11 (Java) on Amazon Linux:
sudo amazon-linux-extras install java-openjdk11

# Ansible Installation on Amazon Linux(EC2)
sudo amazon-linux-extras install ansible2 -y


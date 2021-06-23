#!/bin/bash

# install Terraform
curl https://releases.hashicorp.com/terraform/1.0.0/terraform_1.0.0_linux_amd64.zip -O
unzip terraform_1.0.0_linux_amd64.zip
sudo cp terraform /usr/local/bin/

# Install Packer
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo yum -y install packer



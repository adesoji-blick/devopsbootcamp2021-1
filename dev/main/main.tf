provider "aws" {
  region  = var.region
  profile = var.profile
}

data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket  = "cloudpart1buk"
    key     = "part1/terraform.tfstate"
    region  = "${var.region}"
    profile = "${var.profile}"
  }
}

# Use terraform to query latest generated AMI..
# amazon-linux
data "aws_ami" "amazon-linux" {
  filter {
    name   = "state"
    values = ["available"]
  }

  filter {
    name   = "tag:Name"
    values = ["task2-packer-amazon-linux"]
  }

  most_recent = true
  owners      = ["self"]
}

# ubuntu
data "aws_ami" "ubuntu" {
  filter {
    name   = "state"
    values = ["available"]
  }

  filter {
    name   = "tag:Name"
    values = ["task2-packer-ubuntu"]
  }

  most_recent = true
  owners      = ["self"]
}

module "toolServer1" {
  source         = "../modules/ec2"
  instance_count = var.public_instance_count
  # ami_id           = var.ami_id
  ami_id           = data.aws_ami.amazon-linux.id
  instance_type    = var.instance_type
  subnet_id        = data.terraform_remote_state.network.outputs.public_subnet_a_id
  main_sg_id       = data.terraform_remote_state.network.outputs.main_sg_id
  bootstrap_script = var.installApp["tools1"]
  name             = "toolServer1"
  environment      = var.environment
  role             = var.role
}

module "toolServer2" {
  source         = "../modules/ec2"
  instance_count = var.public_instance_count
  # ami_id           = var.ami_id
  ami_id           = data.aws_ami.amazon-linux.id
  instance_type    = var.instance_type
  subnet_id        = data.terraform_remote_state.network.outputs.public_subnet_b_id
  main_sg_id       = data.terraform_remote_state.network.outputs.main_sg_id
  bootstrap_script = var.installApp["tools2"]
  name             = "toolServer2"
  environment      = var.environment
  role             = var.role
}

module "ubuntu" {
  source         = "../modules/ec2"
  instance_count = var.public_instance_count
  # ami_id           = var.ubuntu_ami_id
  ami_id           = data.aws_ami.ubuntu.id
  instance_type    = var.instance_type
  subnet_id        = data.terraform_remote_state.network.outputs.public_subnet_c_id
  main_sg_id       = data.terraform_remote_state.network.outputs.monitor_sg_id
  bootstrap_script = var.installApp["none"]
  name             = "ubuntu"
  environment      = var.environment
  role             = var.role

}

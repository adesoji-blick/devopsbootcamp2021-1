
module "toolServer1" {
  source           = "../modules/ec2"
  instance_count   = var.public_instance_count
  ami_id           = data.aws_ami.amazon-linux.id
  instance_type    = var.instance_type
  subnet_id        = [data.terraform_remote_state.network.outputs.public_subnet_a_id, data.terraform_remote_state.network.outputs.public_subnet_b_id]
  main_sg_id       = data.terraform_remote_state.network.outputs.main_sg_id
  bootstrap_script = [var.installApp["tools1"], var.installApp["none"]]
  name             = var.toolServer
  environment      = var.environment
  role             = var.role
}

# module "ubuntu" {
#   source           = "../modules/ec2"
#   instance_count   = var.public_ubuntu_count
#   ami_id           = data.aws_ami.ubuntu.id
#   instance_type    = var.instance_type
#   subnet_id        = [data.terraform_remote_state.network.outputs.public_subnet_c_id]
#   main_sg_id       = data.terraform_remote_state.network.outputs.monitor_sg_id
#   bootstrap_script = [var.installApp["tools2"]]
#   name             = var.ubuntuServer
#   environment      = var.environment
#   role             = var.role

# }

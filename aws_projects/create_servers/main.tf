
module "zookeeper" {
  source           = "../modules/ec2"
  instance_count   = var.zookeeper_count
  ami_id           = data.aws_ami.amazon-linux.id
  instance_type    = var.instance_type
  subnet_id        = [data.terraform_remote_state.network.outputs.public_subnet_c_id]
  main_sg_id       = data.terraform_remote_state.network.outputs.zookeeper_sg_id
  bootstrap_script = [var.installApp["baseline"]]
  name             = "zookeeper"
  environment      = var.environment
  role             = var.role
}

module "kbrooker" {
  source           = "../modules/ec2"
  instance_count   = var.kbrooker_count
  ami_id           = data.aws_ami.amazon-linux.id
  instance_type    = var.instance_type
  subnet_id        = [data.terraform_remote_state.network.outputs.public_subnet_a_id]
  main_sg_id       = data.terraform_remote_state.network.outputs.kafka_sg_id
  bootstrap_script = [var.installApp["baseline"]]
  name             = "kafka_brooker"
  environment      = var.environment
  role             = var.role
}

# module "webServer" {
#   source           = "../modules/ec2"
#   instance_count   = var.web_instance_count
#   ami_id           = data.aws_ami.amazon-linux.id
#   instance_type    = var.instance_type
#   subnet_id        = [data.terraform_remote_state.network.outputs.public_subnet_a_id, data.terraform_remote_state.network.outputs.public_subnet_b_id]
#   main_sg_id       = data.terraform_remote_state.network.outputs.main_sg_id
#   bootstrap_script = [var.installApp["baseline"]]
#   name             = var.webServer
#   environment      = var.environment
#   role             = var.role
# }

module "ubuntu" {
  source           = "../modules/ec2"
  instance_count   = var.public_ubuntu_count
  ami_id           = data.aws_ami.ubuntu.id
  instance_type    = var.instance_type
  subnet_id        = [data.terraform_remote_state.network.outputs.public_subnet_a_id]
  main_sg_id       = data.terraform_remote_state.network.outputs.main_sg_id
  bootstrap_script = [var.installApp["none"]]
  name             = var.ubuntuServer
  environment      = var.environment
  role             = var.role

}

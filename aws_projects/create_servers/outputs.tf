output "ubuntu_instance_id" {
  value = module.ubuntu.ec2_id
  #  sensitive   = true
  description = "Id of the EC2 instance"
  #  depends_on  = []
}

output "ubuntu_instance_public_ip" {
  value = module.ubuntu.instance_public_ip
  #  sensitive   = true
  description = "Public IP address of the EC2 instances"
  #  depends_on  = []
}

output "ubuntu_instance_public_dns" {
  value = module.ubuntu.instance_public_dns
  #  sensitive   = true
  description = "Public DNS address of the EC2 instances"
  #  depends_on  = []
}

output "toolServer1_instance_public_ip" {
  value = module.toolServer1.instance_public_ip
  #  sensitive   = true
  description = "Public IP address of the EC2 instances"
  #  depends_on  = []
}


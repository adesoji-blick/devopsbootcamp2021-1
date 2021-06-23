variable "region" {
  default = "eu-west-1"
}

variable "profile" {
  default = "default"
}

variable "ami_id" {
  default = "ami-0ac43988dfd31ab9a"
}

variable "ubuntu_ami_id" {
  type        = string
  default     = "ami-0a8e758f5e873d1c1"
  description = "ubuntu ami id"
}


variable "instance_type" {
  default = "t2.micro"
}

variable "installApp" {
  type = map(string)
  default = {
    "tools1"     = "../../scripts/install_tools1.sh"
    "tools2"     = "../../scripts/install_tools2.sh"
    "nginx"      = "../../scripts/install_nginx.sh"
    "apache"     = "../../scripts/install_apache.sh"
    "monitoring" = "../../scripts/install_monitoring.sh"
    "none"       = "../../scripts/install_none.sh"
  }
}

variable "private_instance_count" {
  default = 1
}

variable "public_instance_count" {
  default = 1
}
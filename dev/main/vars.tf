variable "region" {
  default = "eu-west-1"
}

variable "profile" {
  default = "default"
}

variable "ami_id" {
  default = "ami-0152e9dc6c0a72570"
}

variable "ubuntu_ami_id" {
  type        = string
  default     = "ami-004b5f5c0f04dba5d"
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
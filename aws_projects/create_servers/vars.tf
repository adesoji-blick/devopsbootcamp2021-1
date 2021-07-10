variable "region" {
  default = "eu-west-1"
}

variable "profile" {
  default = "default"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "installApp" {
  type = map(string)
  default = {
    "tools1"     = "../../scripts/install_tools1.sh"
    "baseline"     = "../../scripts/install_baseline.sh"
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

variable "public_ubuntu_count" {}
variable "web_instance_count" {}

variable "environment" {}
variable "role" {}
variable "toolServer" {}
variable "webServer" {}
variable "ubuntuServer" {}

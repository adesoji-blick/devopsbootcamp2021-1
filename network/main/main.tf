provider "aws" {
  region = var.region
  #profile = "${var.profile}"
}

module "main_vpc" {
  source = "../modules/vpc"

}

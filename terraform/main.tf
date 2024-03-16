provider "aws" {
  region = var.region
}

# call the ec2 module
module "ec2" {
  source = "./modules/ec2"
}

# call the vpc module
module "vpc" {
  source = "./modules/vpc"
  vpc_cidr = var.cidr
}
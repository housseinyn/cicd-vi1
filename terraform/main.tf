provider "aws" {
  region = var.region
}

# call the vpc module
module "vpc" {
  source = "./modules/vpc"
}

# call the ec2 module
module "ec2" {
  source = "./modules/ec2"
}

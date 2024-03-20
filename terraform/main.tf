provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "myapp-vpc" {
  cidr_block = var.cidr_block
}

module "myapp-subnet" {
  source                 = "./modules/vpc"
  subnet_cidr_block      = var.subnet_cidr_block
  avail_zone             = var.avail_zone
  env_prefix             = var.env_prefix
  vpc_id                 = aws_vpc.myapp-vpc.id
  default_route_table_id = aws_vpc.myapp-vpc.default_route_table_id
}

module "myapp-server" {
  source              = "./modules/ec2"
  vpc_id              = aws_vpc.myapp-vpc.id
  my_ip               = var.my_ip
  env_prefix          = var.env_prefix
  image_name          = var.image_name
  public_key_location = var.public_key_location
  instance_type       = var.instance_type
  subnet_id           = module.myapp-subnet.subnet.id
  avail_zone          = var.avail_zone
}

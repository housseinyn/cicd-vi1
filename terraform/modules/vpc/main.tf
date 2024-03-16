# resource "aws_vpc" "main" {
# }



module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "fg-vpc"
  cidr = "10.10.0.0/16"

  azs = ["us-east-1"]

  private_subnets = ["10.10.2.0/24"]
  public_subnets  = ["10.10.1.0/24"]

  enable_nat_gateway = true

  tags = {
    name        = "fg-vpc-dev"
    Environment = "dev"
  }
}

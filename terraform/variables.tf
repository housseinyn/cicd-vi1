variable "cidr_block" {
  description = "The CIDR block for the VPC"
    default = "10.10.0.0/16"
}
variable "subnet_cidr_block" {
  description = "The CIDR block for the subnet"
    default = "10.0.0.10/24"
}

variable "avail_zone" {
  description = "The availability zone for the subnet"
    default = "us-east-1a"
}

variable "env_prefix" {
  description = "The environment prefix for the resources"
    default = "myapp"
}

variable "my_ip" {
  description = "The IP address to allow SSH access"
}

variable "image_name" {
  description = "The name of the AMI to use for the EC2 instance"
    default = "amzn2-ami-hvm-*-x86_64-gp2"
}

variable "public_key_location" {
  description = "The location of the public key to use for SSH access"
}

variable "instance_type" {
  description = "The instance type to use for the EC2 instance"
    default = "t2.micro"
}
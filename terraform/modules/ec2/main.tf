data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_type
  tags = {
    Name = "fg-web-dev"
  }

}

resource "aws_instance" "db" {
  ami           = var.ami
  instance_type = var.instance_type_db
  tags = {
    Name = "fg-db-dev"
  }
  
}
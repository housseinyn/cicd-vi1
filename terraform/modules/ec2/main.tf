data "aws_ami" "latest-amazon-linux-image" {
    most_recent = true
    owners = ["amazon"]
    filter {
        name = "name"
        values = [var.image_name]
    }
    filter {
        name = "virtualization-type"
        values = ["hvm"]
    }
}


resource "aws_instance" "web-server" {
    ami = data.aws_ami.latest-amazon-linux-image.id
    instance_type = var.instance_type

    subnet_id = var.subnet_id
    availability_zone = var.avail_zone

    associate_public_ip_address = true

    tags = {
        Name = "${var.env_prefix}-server"
    }
}
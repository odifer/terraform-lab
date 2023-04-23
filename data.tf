data "aws_security_group" "sg1" {
  name = "webserver"
  #id = "sg-003cccd8bc48a1b23"
}

data "aws_ami" "ami" {
  most_recent      = true
  owners           = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-*-gp2"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}           

data "aws_route53_zone" "aws-e-learning" {
  name         = "aws-e-learning.online."
}
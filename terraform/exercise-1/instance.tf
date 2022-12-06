provider "aws" {
  region = "sa-east-1"
}

resource "aws_instance" "first-instance" {
  ami = "ami-id"
  instance_type = "instance_type"
  availability_zone = "sa-east-1a"
  key_name = "key-name-in-aws"
  security_groups = [ "security-group-name" ]
  vpc_security_group_ids = [ "security-group-id" ]
  tags = {
    "Name" = "Name of the instance"
  }
}
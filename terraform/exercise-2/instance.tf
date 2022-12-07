resource "aws_instance" "new-instance" {
  ami               = var.AMIS[var.AWS_REGION]
  instance_type     = "instance_type"
  availability_zone = var.ZONE_ONE
  key_name               = "key-name-in-aws"
  security_groups        = ["security-group-name"]
  vpc_security_group_ids = ["security-group-id"]
  tags = {
    "Name" = "Name of the instance"
  }
}
resource "aws_security_group" "server-SG" {
  vpc_id      = aws_vpc.vpc-name.id
  name        = "server-SG"
  description = "Allow SSH to developers"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.MY_IP]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Project = "Project name"
  }
}
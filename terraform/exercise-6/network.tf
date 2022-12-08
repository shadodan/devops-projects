resource "aws_vpc" "vpc-name" {
  cidr_block = "10.0.0.0/16"

  instance_tenancy     = "default"
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"

  tags = {
    Name = "vpc-name-VPC"
  }
}

resource "aws_subnet" "subnet-name-pub-1" {
  vpc_id = aws_vpc.vpc-name.id

  cidr_block = "10.0.1.0/24"

  map_public_ip_on_launch = "true"

  availability_zone = var.ZONE_ONE

  tags = {
    Name = "vpc-name-pub-1"
  }
}

resource "aws_subnet" "subnet-name-pub-2" {
  vpc_id = aws_vpc.vpc-name.id

  cidr_block = "10.0.2.0/24"

  map_public_ip_on_launch = "true"

  availability_zone = var.ZONE_TWO

  tags = {
    Name = "vpc-name-pub-2"
  }
}

resource "aws_subnet" "subnet-name-pub-3" {
  vpc_id = aws_vpc.vpc-name.id

  cidr_block = "10.0.3.0/24"

  map_public_ip_on_launch = "true"

  availability_zone = var.ZONE_THREE

  tags = {
    Name = "vpc-name-pub-3"
  }
}

resource "aws_subnet" "subnet-name-priv-1" {
  vpc_id = aws_vpc.vpc-name.id

  cidr_block = "10.0.4.0/24"

  map_public_ip_on_launch = "true"

  availability_zone = var.ZONE_ONE

  tags = {
    Name = "vpc-name-priv-1"
  }
}

resource "aws_subnet" "subnet-name-priv-2" {
  vpc_id = aws_vpc.vpc-name.id

  cidr_block = "10.0.5.0/24"

  map_public_ip_on_launch = "true"

  availability_zone = var.ZONE_TWO

  tags = {
    Name = "vpc-name-priv-2"
  }
}

resource "aws_subnet" "subnet-name-priv-3" {
  vpc_id = aws_vpc.vpc-name.id

  cidr_block = "10.0.6.0/24"

  map_public_ip_on_launch = "true"

  availability_zone = var.ZONE_THREE

  tags = {
    Name = "vpc-name-priv-3"
  }
}

resource "aws_internet_gateway" "project-name-IGW" {
  vpc_id = aws_vpc.vpc-name.id

  tags = {
    Name = "project-name-IGW"
  }
}

resource "aws_route_table" "project-name-RT" {
  vpc_id = aws_vpc.vpc-name.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.project-name-IGW.id
  }

  tags = {
    Name = "project-name-RT"
  }
}

resource "aws_route_table_association" "subnet-pub-1" {
  subnet_id      = aws_subnet.subnet-name-pub-1.id
  route_table_id = aws_route_table.project-name-RT.id
}

resource "aws_route_table_association" "subnet-pub-2" {
  subnet_id      = aws_subnet.subnet-name-pub-2.id
  route_table_id = aws_route_table.project-name-RT.id
}

resource "aws_route_table_association" "subnet-pub-3" {
  subnet_id      = aws_subnet.subnet-name-pub-3.id
  route_table_id = aws_route_table.project-name-RT.id
}
variable "AWS_REGION" {
  default = "sa-east-1"
}

variable "ZONE_ONE" {
  default = "sa-east-1a"
}

variable "ZONE_TWO" {
  default = "sa-east-1b"
}

variable "ZONE_THREE" {
  default = "sa-east-1c"
}

variable "AMIS" {
  type = map(string)

  default = {
    sa-east-1 = "ami-0b7101e993ea27f3a"
    us-east-1 = "ami-0947d2ba12ee1ff75"
  }
}

variable "CONNECTION_USER" {
  default = "ec2-user"
}

variable "PUBLIC_KEY" {
  default = "key-rsa.pub"
}

variable "PRIVATE_KEY" {
  default = "key-rsa.pem"
}

variable "MY_IP" {
  # Simulating IP
  default = "123.456.789.1/32"
}
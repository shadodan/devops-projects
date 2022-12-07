variable "AWS_REGION" {
  default = "sa-east-1"
}

variable "ZONE_ONE" {
  default = "sa-east-1a"
}

variable "AMIS" {
  type = map(string)

  default = {
    "sa-east-1" = "ami-0b7101e993ea27f3a"
    "us-east-1" = "ami-0947d2ba12ee1ff75"
  }
}
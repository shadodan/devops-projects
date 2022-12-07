resource "aws_key_pair" "key-rsa" {
  key_name   = "key-name-KP"
  public_key = file("key-rsa.pub")
}

resource "aws_instance" "new-instance" {
  ami = var.AMIS[var.AWS_REGION]

  instance_type     = "instance_type"
  availability_zone = var.ZONE_ONE

  key_name = aws_key_pair.key-rsa.key_name

  security_groups        = ["security-group-name"]
  vpc_security_group_ids = ["security-group-id"]

  tags = {
    "Name" = "Name of the instance"
  }

  provisioner "file" {
    source      = "web.sh"
    destination = "/tmp/web.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod u+x /tmp/web.sh",
      "sudo /tmp/web.sh"
    ]
  }

  connection {
    user        = var.CONNECTION_USER
    private_key = file("key-rsa.pem")
    host        = self.public_ip
  }
}
resource "aws_key_pair" "key-rsa" {
  key_name   = "key-name-KP"
  public_key = file(var.PUBLIC_KEY)
}

resource "aws_instance" "new-instance" {
  ami = var.AMIS[var.AWS_REGION]

  instance_type     = "instance_type"
  availability_zone = var.ZONE_ONE
  subnet_id         = aws_subnet.subnet-name-pub-1

  key_name = aws_key_pair.key-rsa.key_name

  vpc_security_group_ids = [aws_security_group.server-SG.id]

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
    private_key = file(var.PRIVATE_KEY)
    host        = self.public_ip
  }
}

resource "aws_ebs_volume" "server-EBS" {
  availability_zone = var.ZONE_ONE
  size              = 3
  tags = {
    Name = "extr-vol-3-server-name-EBS"
  }
}

resource "aws_volume_attachment" "server-vol-attachment" {
  device_name = "/dev/xvdh"
  volume_id   = aws_ebs_volume.server-EBS.id
  instance_id = aws_instance.new-instance.id
}

output "public-ip" {
  value = aws_instance.new-instance.public_ip
}
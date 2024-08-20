
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.54.1"
    }
  }
}

resource "aws_instance" "first_instance" {
  ami                     = var.ami_id
  availability_zone       = var.azs
  instance_type           = var.instance_type
  key_name                = var.key
  subnet_id               = var.subnet_id
  security_groups         = [aws_security_group.ssh-allow.id]
  count                   = 1
  user_data               = <<-EOF
      #!/bin/bash
      sudo yum update -y
      sudo yum install httpd -y
      sudo systemctl start httpd
      sudo systemctl enable httpd

      echo "<h1> Successfully implementation of jenkins pipeline !!! </h1>" >> /var/www/html/index.html
      sudo chmod 777 /var/www/html/index.html
  EOF

  tags = {
      Name = "first-instance"
  }
}



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
  user_data               = file("hello.sh") 

  tags = {
      Name = "first-instance"
  }
}


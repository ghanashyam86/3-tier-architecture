variable "aws_region" {
   description = "aws region"
   type = string
   default = "us-east-2"

 }

variable "azs" {
  description = "us-east-2a"
  type = string
  default = "us-east-2a"
}

variable "instance_type" {
  description = "type of instance"
  type = string
  default = "t2.micro"
}

variable "subnet_id" {
  description = "subnet id for instance"
  type = string
  default = "subnet-0e175ae23021d5ece"
}

variable "ami_id" {
  description = "ami id for instance "
  type = string
  default = "ami-0490fddec0cbeb88b"
}

variable "key" {
  description = "key for instance"
  type = string
  default = "ohio-83.pem"
}

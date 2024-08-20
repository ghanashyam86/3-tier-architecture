#Security group using terraform

resource "aws_security_group" "ssh-allow" {
    name          = "allo ssh port to instance"
    description   = "this is security group for ssh "
    vpc_id        = "vpc-0cb329429d08ba719"

   ingress {
       description     = "ssh port"
       from_port       = 22
       to_port         = 22
       protocol        = "tcp"
       cidr_blocks     = ["0.0.0.0/0"]
   }

  ingress {
       description     = "http port"
       from_port       = 80
       to_port         = 80
       protocol        = "tcp"
       cidr_blocks     = ["0.0.0.0/0"]
   }

  egress {
       description    = "outbond rule "
       from_port      = 0
       to_port        = 0
       protocol       = "-1"
       cidr_blocks     = ["0.0.0.0/0"]

 }

  tags = {

          Name = "new-high-security"
    }
}


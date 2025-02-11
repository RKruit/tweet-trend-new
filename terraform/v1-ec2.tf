provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "demo-server" {
  ami = "ami-0df435f331839b2d6"
  instance_type = "t2.nano"
  key_name = "dpp2"
  security_groups = ["allow_ssh"]
}

resource "aws_security_group" "demo-sg" {
  name        = "allow_ssh"
  description = "Allow SSH access"

  ingress {
    description      = "SSH access"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "ssh-port"
  }
}
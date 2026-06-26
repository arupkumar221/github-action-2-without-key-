terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-0cb473a1f3c06c13d"
  instance_type = "t3.micro"

  tags = {
    Name = "GitHubActions-EC2-arup"
  }
}

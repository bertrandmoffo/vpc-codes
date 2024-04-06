provider "aws" {
  region = "us-east-1"
}
resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "bert"
  }
}

#creating an ec2 instance
resource "aws_instance" "desamist" {
  ami           = "ami-032346ab877c418af"
  instance_type = "t2.micro" 
  key_name = "moffo key"

  tags = {
    Name = "HelloWorld"
  }
}
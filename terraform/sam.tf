provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "aws_linux" {
  ami = "ami-0e1ef59154d415994"
  instance_type = "t2.medium"
  key_name      = "id_rsa"

  vpc_security_group_ids = ["sg-0d989d4644e4f72f0"]

  tags = {
    Name = "TerraformDemoInstance"
  }     
}
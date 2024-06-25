provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "example" {
  ami = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  key_name      = "id_rsa"

  vpc_security_group_ids = ["sg-0d989d4644e4f72f0"]

  tags = {
    Name = "TerraformDemoInstance"
  }     
}
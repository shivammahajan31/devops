provider "aws" {
  region = var.region

}

resource "aws_instance" "demo_instance" {
  ami = var.ami_id
  instance_type = var.instance_type
  key_name   = var.key_name
  vpc_security_group_ids =  var.vpc_security_group_ids
  vpc_id = var.vpc_id
  vpc_subnet_id = var.vpc_subnet_id




  tags = {
    Name = "${var.instance_name}"-demo_instance
  }     
}
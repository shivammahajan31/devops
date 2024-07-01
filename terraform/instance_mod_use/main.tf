provider "aws" {
  region = var.region
}

resource "module" "instance" {
    source = "/root/devops/terraform/modules/instance"
    instance_name = var.instance_name
    ami_id = var.ami_id
    instance_type = var.instance_type
    key_name = var.key_name
    vpc_id = var.vpc_id
    vpc_subnet_id = var.vpc_subnet_id
    vpc_security_group_ids = var.vpc_security_group_ids


}
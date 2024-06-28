provider "aws" {
  region = var.region
}

module "vpc" {
  source               = "/root/devops/terraform/modules/vpc"
  vpc_cidr             = var.vpc_cidr_block
  vpc_name             = var.vpc_name
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidr  = var.private_subnet_cidrs
  availability_zones   = var.availability_zones
}

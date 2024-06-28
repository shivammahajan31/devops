provider "aws" {
  region = var.region
}

module "vpc" {
  source               = "/root/devops/terraform/modules/vpc"
  vpc_cidr_block       = var.vpc_cidr_block
  vpc_name             = var.vpc_name
  public_subnet_cidr   = var.public_subnet_cidr
  private_subnet_cidr  = var.private_subnet_cidr
  availability_zones   = var.availability_zones
}

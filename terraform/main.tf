module "autoscaling" {
  source           = "/root/devops/terraform/modules/autoscalling"
  name             = var.name
  region           = var.region
  ami              = var.ami
  instance_type    = var.instance_type
  desired_capacity = var.desired_capacity
  max_size         = var.max_size
  min_size         = var.min_size
  subnet_ids       = var.subnet_ids
}

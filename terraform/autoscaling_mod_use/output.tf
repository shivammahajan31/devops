output "autoscaling_group_name" {
  description = "Name of the auto-scaling group"
  value = module.autoscaling.autoscaling_group_name
}
output "aws_launch_configuration_id" {
  description = "id of the auto-scaling group"
  value       = module.autoscaling.aws_launch_configuration_id
}

output "autoscaling_group_name" {
  description = "Name of the auto-scaling group"
  value       = aws_autoscaling_group.autoscaling_group_1.name
}
output "aws_launch_configuration_id" {
  description = "Name of the auto-scaling group"
  value       = aws_launch_configuration.autoscaling_group_1.id
}
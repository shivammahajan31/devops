output "autoscaling_group_name" {
  description = "name of the auto_scaling group"
  value       = aws_autoscaling_group.myasg.name
}
output "aws_launch_configuration_id" {
    description = "aws_launch_configuration_id"
    value = aws_launch_configuration.myasg.id
}


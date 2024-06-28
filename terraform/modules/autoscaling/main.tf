provider "aws" {
  region = var.region
}

resource "aws_launch_configuration" "myasg" {
  name          = "${var.name}-launch-configuration"
  image_id      = var.ami
  instance_type = var.instance_type

  
lifecycle {
    create_before_destroy = true
  }
}


resource "aws_autoscaling_group" "myasg" {
  desired_capacity     = var.desired_capacity
  max_size             = var.max_size
  min_size             = var.min_size
  launch_configuration = aws_launch_configuration.myasg.id
  vpc_zone_identifier  = var.subnet_ids

  tag {
    key                 = "Name"
    value               = "${var.name}-autoscaling-group"
    propagate_at_launch = true
  }
}

resource "aws_autoscaling_policy" "scale_up" {
  name                   = "${var.name}-scale-up"
  scaling_adjustment     = 1
  adjustment_type        = "ChangeInCapacity"
  cooldown               = 100
  autoscaling_group_name = aws_autoscaling_group.myasg.name
}

resource "aws_autoscaling_policy" "scale_down" {
  name                   = "${var.name}-scale-down"
  scaling_adjustment     = -1
  adjustment_type        = "ChangeInCapacity"
  cooldown               = 100
  autoscaling_group_name = aws_autoscaling_group.myasg.name
}

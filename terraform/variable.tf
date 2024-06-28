variable "name" {
  description = "Name of the auto-scaling group"
  type        = string
  default     = "my_autoscalling"
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "ami" {
  description = "AMI ID for the instances"
  type        = string
  default     = "ami-01b799c439fd5516a"
}

variable "instance_type" {
  description = "Instance type"
  type        = string
  default     = "t2.micro"
}

variable "desired_capacity" {
  description = "Desired capacity"
  type        = number
  default     = 2
}

variable "max_size" {
  description = "Maximum size of the auto-scaling group"
  type        = number
  default     = 3
}

variable "min_size" {
  description = "Minimum size of the auto-scaling group"
  type        = number
  default     = 2
}

variable "subnet_ids" {
  description = "List of subnet IDs"
  type        = list(string)
  default     = ["subnet-0847f124a7bf05660","subnet-09bad27dac8c2a587","subnet-07357fda7181a508b"]
}

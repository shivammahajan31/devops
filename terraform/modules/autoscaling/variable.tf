variable "name" {
    type = string
}
variable "region" {
    type = string
}
variable "ami" {
    type = string
}
variable "instance_type" {
    type = string
}
variable "desired_capacity" {
    type = number
}
variable "max_size" {
    type = number
}
variable "min_size" {
    type = number
}
variable "subnet_ids" {
    type = string
}

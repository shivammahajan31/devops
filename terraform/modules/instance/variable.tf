variable "region" {
    type = string
}
variable "instance_name" {
    type = string
}
variable "ami_id" {
    type = string
}
variable  "instance_type" {
    type = string
}
variable "key_name" {
    type = string
}
variable "vpc_id" {
    type = string
}
variable "vpc_subnet_id" {
    type = string
}
variable "vpc_security_group_ids" {
    type = list(string)
}

variable "region" {
    type = string 
    default = "us-east-1"
}
variable "instance_name" {
    type = string
    default = "new_instance"
}
variable "ami_id" {
    type = string
    default = "ami-0e001c9271cf7f3b9"
}
variable  "instance_type" {
    type = string
    default = "t2.micro"
}
variable "key_name" {
    type = string 
    default = "kb.pem"
}
variable "vpc_id" {
    type = string
    default = "vpc-052cce6d50c79deac"
}
variable "vpc_subnet_id" {
    type = string
    default = "subnet-0847f124a7bf05660"
}
variable "vpc_security_group_ids" {
    type = list(string)
    default = ["sg-03e1e5c3310d57ff7}"]

}

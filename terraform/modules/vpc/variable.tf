variable "vpc_name" {
    type = string 
}
variable  "vpc_cidr_block" {
    type = string
}
variable "public_subnet_cidr" {
    type = string
}
variable "private_subnet_cidr" {
    type = string
}
variable "availability_zones" {
    type = list(string)
}






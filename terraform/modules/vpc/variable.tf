variable "vpc_name" {
    type = string 
}
variable  "vpc_cidr_block" {
    type = string
}
variable "public_subnet_cidrs" {
    type = list(string)
}
variable "private_subnet_cidrs" {
    type = list(string)
}
variable "availability_zones" {
    type = list(string)
}






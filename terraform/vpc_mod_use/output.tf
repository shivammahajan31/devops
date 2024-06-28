output "vpc_id" {
    value = module.aws_vpc.myvpc.id
}
output "private_subnet_id" {
    value = module.aws_subnet.private_subnet.id
}
output "public_subnet_id" {
    value = module.aws_subnet.public_subnet.id
}
output "gateway_id" {
    value = module.aws_internet_gateway.internet_gateway.id
}
output "route_table_id" {
    value = module.aws_route_table.public_route_table.id
}
output "myvpc_id" {
    description = "id of the vpc"
    value = module.vpc.myvpc_id
}
output "private_subnet_id" {
    value = module.vpc.private_subnet_id
}
output "public_subnet_id" {
    value = module.vpc.public_subnet_id
}
output "internet_gateway_id" {
    value = module.vpc.internet_gateway_id
}
output "public_route_table_id" {
    value = module.vpc.public_route_table_id
}
output "vpc_id" {
  value = aws_vpc.myvpc.id
}
output "private_subnet_id" {
  value = aws_subnet.private_subnet_1.id
}
output "public_subnet_id" {
  value = aws_subnet.public_subnet_1.id
}
output "gateway_id" {
  value  = aws_internet_gateway.internet_gateway.id
}
output "route_table_id" {
  value = aws_route_table.public_route_table.id
}


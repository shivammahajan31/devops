resource "aws_vpc" "my_vpc" {
  cidr_block     = var.vpc_cidr_block

  tags = {
    Name = "${var.vpc_name}-vpc"
  }
}

resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = aws.vpc.myvpc_id

  tags = {
    Name = "${var.vpc_name}-igw"
  }
}

data "aws_availability_zones" "available_zones" {}

resource "aws_subnet" "public_subnet_1" {
  vpc_id                  = aws.vpc.myvpc_id
  cidr_block              = var.public_subnet_1_cidr
  availability_zone       = data.aws_availability_zones.available_zones.names[0]
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.vpc_name}-public-1"
  }
}

resource "aws_subnet" "private_subnet_1" {
  vpc_id                  = aws.vpc.myvpc_id
  cidr_block              = var.private_subnet_1_cidr
  availability_zone       = data.aws_availability_zones.available_zones.names[0]
  map_public_ip_on_launch = false 

  tags = {
    Name = "${var.vpc_name}-private-1"
  }
}

resource "aws_route_table" "public_route_table" {
  vpc_id = aws.vpc.myvpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet_gateway.id
  }

  tags = {
    Name = "${var.vpc_name}-public-rt"
  }
}

resource "aws_route_table_association" "public_subnet_1_rt_association" {
  subnet_id      = aws_subnet.public_subnet_1.id
  route_table_id = aws_route_table.public_route_table.id
}


# Create VPC
# terraform aws create vpc
resource "aws_vpc" "vpc" {
  cidr_block           = var.vpc-cidr
  instance_tenancy     = var.instance_tenancy
  enable_dns_hostnames = var.enable_dns_hostnames

  tags = {
    Name = var.vpc-name
  }
}

# Create Internet Gateway and Attach it to VPC
# terraform aws create internet gateway
resource "aws_internet_gateway" "internet-gateway" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = var.igw-name
  }
}

# # Create Public Subnet 1
# # terraform aws create subnet
resource "aws_subnet" "public-subnet-1" {
  vpc_id                  = var.vpc-id
  cidr_block              = var.Public-subnet-1-cidr
  availability_zone       = var.availability_zone-1a
  map_public_ip_on_launch = var.map_public_ip_on_launch

  tags = {
    Name = var.public-subnet-name1
  }
}

# # Create Public Subnet 2
# # terraform aws create subnet
resource "aws_subnet" "public-subnet-2" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.Public-subnet-2-cidr
  availability_zone       = var.availability_zone-1b
  map_public_ip_on_launch = var.map_public_ip_on_launch

  tags = {
    Name = var.public-subnet-name2
  }
}

# # Create Route Table and Add Public Route
# # terraform aws create route table
# resource "aws_route_table" "public-route-table" {
#   vpc_id = aws_vpc.vpc.id

#   route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = aws_internet_gateway.internet-gateway.id
#   }

#   tags = {
#     Name = "public route table"
#   }
# }

# # Associate Public Subnet 1 to "Public Route Table"
# # terraform aws associate subnet with route table
# resource "aws_route_table_association" "public-subnet-1-route-table-association" {
#   subnet_id      = aws_subnet.public-subnet-1.id
#   route_table_id = aws_route_table.public-route-table.id
# }

# # Associate Public Subnet 2 to "Public Route Table"
# # terraform aws associate subnet with route table
# resource "aws_route_table_association" "public-subnet-2-route-table-association" {
#   subnet_id      = aws_subnet.public-subnet-2.id
#   route_table_id = aws_route_table.public-route-table.id
# }

# # Create Private Subnet 1
# # terraform aws create subnet
# resource "aws_subnet" "private-subnet-1" {
#   vpc_id                  = aws_vpc.vpc.id
#   cidr_block              = var.Private-subnet-1-cidr
#   availability_zone       = "us-east-1a"
#   map_public_ip_on_launch = false

#   tags = {
#     Name = "Private Subnet 1 | App Tier"
#   }
# }

# # Create Private Subnet 2
# # terraform aws create subnet
# resource "aws_subnet" "private-subnet-2" {
#   vpc_id                  = aws_vpc.vpc.id
#   cidr_block              = var.Private-subnet-2-cidr
#   availability_zone       = "us-east-1b"
#   map_public_ip_on_launch = false

#   tags = {
#     Name = "Private Subnet 2 | App Tier"
#   }
# }

# # Create Private Subnet 3
# # terraform aws create subnet
# resource "aws_subnet" "private-subnet-3" {
#   vpc_id                  = aws_vpc.vpc.id
#   cidr_block              = var.Private-subnet-3-cidr
#   availability_zone       = "us-east-1a"
#   map_public_ip_on_launch = false

#   tags = {
#     Name = "Private Subnet 3 | Database Tier"
#   }
# }

# # Create Private Subnet 4
# # terraform aws create subnet
# resource "aws_subnet" "private-subnet-4" {
#   vpc_id                  = aws_vpc.vpc.id
#   cidr_block              = var.Private-subnet-4-cidr
#   availability_zone       = "us-east-1b"
#   map_public_ip_on_launch = false

#   tags = {
#     Name = "Private Subnet 4 | Database Tier"
#   }
# }
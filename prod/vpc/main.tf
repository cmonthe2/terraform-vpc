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

data data terraform_remote_state name {
  backend = "local"

  config {
    local = "value"
  }
}

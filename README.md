<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_internet_gateway.internet-gateway](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_route_table.public-route-table](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.public-subnet-1-route-table-association](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.public-subnet-2-route-table-association](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_subnet.private-subnet-1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.private-subnet-2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.private-subnet-3](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.private-subnet-4](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.public-subnet-1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.public-subnet-2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_vpc.vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_Private-subnet-1-cidr"></a> [Private-subnet-1-cidr](#input\_Private-subnet-1-cidr) | Private Subnet 1  CIDR Block | `string` | `"10.0.2.0/24"` | no |
| <a name="input_Private-subnet-2-cidr"></a> [Private-subnet-2-cidr](#input\_Private-subnet-2-cidr) | Private Subnet 2  CIDR Block | `string` | `"10.0.3.0/24"` | no |
| <a name="input_Private-subnet-3-cidr"></a> [Private-subnet-3-cidr](#input\_Private-subnet-3-cidr) | Private Subnet 3 CIDR Block | `string` | `"10.0.4.0/24"` | no |
| <a name="input_Private-subnet-4-cidr"></a> [Private-subnet-4-cidr](#input\_Private-subnet-4-cidr) | Private Subnet 4 CIDR Block | `string` | `"10.0.5.0/24"` | no |
| <a name="input_Public-subnet-1-cidr"></a> [Public-subnet-1-cidr](#input\_Public-subnet-1-cidr) | Public Subnet 1  CIDR Block | `string` | `"10.0.0.0/24"` | no |
| <a name="input_Public-subnet-2-cidr"></a> [Public-subnet-2-cidr](#input\_Public-subnet-2-cidr) | Public Subnet 1  CIDR Block | `string` | `"10.0.1.0/24"` | no |
| <a name="input_availability_zone-1a"></a> [availability\_zone-1a](#input\_availability\_zone-1a) | name of the availability zone 1a | `string` | `"us-east-1a"` | no |
| <a name="input_availability_zone-1b"></a> [availability\_zone-1b](#input\_availability\_zone-1b) | name of the availability zone 1a | `string` | `"us-east-1a"` | no |
| <a name="input_enable_dns_hostnames"></a> [enable\_dns\_hostnames](#input\_enable\_dns\_hostnames) | dns\_hostane status | `bool` | `true` | no |
| <a name="input_igw-name"></a> [igw-name](#input\_igw-name) | Name of the Internet Gateway | `string` | `"Deball-IGW"` | no |
| <a name="input_instance_tenancy"></a> [instance\_tenancy](#input\_instance\_tenancy) | value of the instance tenancy | `string` | `"default"` | no |
| <a name="input_map_public_ip_on_launch"></a> [map\_public\_ip\_on\_launch](#input\_map\_public\_ip\_on\_launch) | status of map public on lunch | `bool` | `true` | no |
| <a name="input_public-route-table"></a> [public-route-table](#input\_public-route-table) | public-route-table | `string` | `"public route table"` | no |
| <a name="input_public-subnet-name1"></a> [public-subnet-name1](#input\_public-subnet-name1) | name of the public subnet 1 | `string` | `"public subnet 1"` | no |
| <a name="input_public-subnet-name2"></a> [public-subnet-name2](#input\_public-subnet-name2) | name of the public subnet 2 | `string` | `"public subnet 2"` | no |
| <a name="input_vpc-cidr"></a> [vpc-cidr](#input\_vpc-cidr) | VPC CIDR Block | `string` | `"10.0.0.0/16"` | no |
| <a name="input_vpc-id"></a> [vpc-id](#input\_vpc-id) | Id of the VPC | `string` | `"vpc-0becca6803207016f"` | no |
| <a name="input_vpc-name"></a> [vpc-name](#input\_vpc-name) | Name of the VPC | `string` | `"Deball-VPC"` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | vpc id value | `string` | `"my_vpc.id"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | n/a |
<!-- END_TF_DOCS -->
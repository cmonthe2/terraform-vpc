variable "vpc-cidr" {
  default     = "10.0.0.0/16"
  description = "VPC CIDR Block"
  type        = string
}

variable "instance_tenancy" {
  default = "default"
  description = "value of the instance tenancy"
  type = string
}

variable "enable_dns_hostnames" {
  default = true
  description = "dns_hostane status"
  type = bool
}

variable "vpc-name" {
  default = "Deball-VPC"
  description = "Name of the VPC"
  type = string
}

variable "vpc-id" {
  default = "vpc-0becca6803207016f"
  description = "Id of the VPC"
  type = string
}

variable "igw-name" {
  default = "Deball-IGW"
  description = "Name of the Internet Gateway"
  type = string
}

variable "Public-subnet-1-cidr" {
  default     = "10.0.0.0/24"
  description = "Public Subnet 1  CIDR Block"
  type        = string
}

variable "public-subnet-name1" {
  default = "public subnet 1"
  description = "name of the public subnet 1"
}

variable "map_public_ip_on_launch" {
  default = true
  description = "status of map public on lunch"
  type = bool
}

variable "availability_zone-1a" {
  default = "us-east-1a"
  description = "name of the availability zone 1a"
}

variable "Public-subnet-2-cidr" {
  default     = "10.0.1.0/24"
  description = "Public Subnet 1  CIDR Block"
  type        = string
}

variable "availability_zone-1b" {
  default = "us-east-1a"
  description = "name of the availability zone 1a"
}

variable "public-subnet-name2" {
  default = "public subnet 2"
  description = "name of the public subnet 2"
}

# variable "Private-subnet-1-cidr" {
#   default     = "10.0.2.0/24"
#   description = "Private Subnet 1  CIDR Block"
#   type        = string
# }

# variable "Private-subnet-2-cidr" {
#   default     = "10.0.3.0/24"
#   description = "Private Subnet 2  CIDR Block"
#   type        = string
# }

# variable "Private-subnet-3-cidr" {
#   default     = "10.0.4.0/24"
#   description = "Private Subnet 3 CIDR Block"
#   type        = string
# }

# variable "Private-subnet-4-cidr" {
#   default     = "10.0.5.0/24"
#   description = "Private Subnet 4 CIDR Block"
#   type        = string
# }

variable "cluster_name" {
  description = "Name of the EKS cluster"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
}

variable "private_subnet_cidrs" {
  description = "List of CIDR blocks for private subnets"
}

variable "public_subnet_cidrs" {
  description = "List of CIDR blocks for public subnets"
}

variable "availability_zones" {
  description = "List of availability zones"
}

variable "internet_gateway_cidr_block" {
  description = "CIDR block for internet gateway route"
}

variable "private_subnet_elb_role" {
  description = "ELB role tag for private subnets"
}

variable "public_subnet_elb_role" {
  description = "ELB role tag for public subnets"
}

variable "eip_domain" {
  description = "Domain for Elastic IP allocation"
}

variable "private_subnet_elb_value" {
  description = "Value for private subnet ELB role tag"
}

variable "public_subnet_elb_value" {
  description = "Value for public subnet ELB role tag"
}

variable "tags" {
  description = "Additional tags to apply to all resources"
}
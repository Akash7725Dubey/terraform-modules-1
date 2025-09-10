variable "cluster_name" {
  description = "Name of the EKS cluster"
}

variable "vpc_id" {
  description = "VPC ID for VPC endpoints"
}

variable "private_subnet_ids" {
  description = "List of private subnet IDs"
}

variable "route_table_ids" {
  description = "List of route table IDs"
}

variable "node_security_group_id" {
  description = "ID of the node security group"
}

variable "enable_vpc_endpoints" {
  description = "Whether to create VPC endpoints"
}

variable "region" {
  description = "AWS region"
}

variable "tags" {
  description = "Additional tags to apply to all resources"
}
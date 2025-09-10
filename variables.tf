variable "cluster_name" {
  description = "Name of the EKS cluster"
}

variable "cluster_version" {
  description = "Kubernetes version for the EKS cluster"
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
  description = "List of availability zones to use"
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

variable "endpoint_private_access" {
  description = "Whether the Amazon EKS private API server endpoint is enabled"
}

variable "endpoint_public_access" {
  description = "Whether the Amazon EKS public API server endpoint is enabled"
}

variable "enabled_cluster_log_types" {
  description = "List of the desired control plane logging to enable"
}

variable "enable_vpc_endpoints" {
  description = "Whether to create VPC endpoints for EKS"
}

variable "cloudwatch_log_retention" {
  description = "Number of days to retain CloudWatch logs"
}

variable "cluster_ingress_port" {
  description = "Port for cluster ingress traffic"
}

variable "cluster_egress_from_port" {
  description = "Starting port for cluster egress traffic"
}

variable "cluster_egress_to_port" {
  description = "Ending port for cluster egress traffic"
}

variable "nodes_ingress_from_port" {
  description = "Starting port for nodes ingress traffic"
}

variable "nodes_ingress_to_port" {
  description = "Ending port for nodes ingress traffic"
}

variable "tags" {
  description = "Additional tags to apply to all resources"
}

variable "aws_region" {
  description = "AWS region to deploy resources"
}

variable "cluster_ingress_protocol" {
  description = "Protocol for cluster ingress traffic"
  default     = "tcp"
}

variable "cluster_egress_protocol" {
  description = "Protocol for cluster egress traffic"
  default     = "tcp"
}

variable "nodes_ingress_protocol" {
  description = "Protocol for nodes ingress traffic"
  default     = "-1"
}

variable "nodes_egress_protocol" {
  description = "Protocol for nodes egress traffic"
  default     = "-1"
}

variable "nodes_egress_from_port" {
  description = "Starting port for nodes egress traffic"
  default     = 0
}

variable "nodes_egress_to_port" {
  description = "Ending port for nodes egress traffic"
  default     = 0
}

variable "nodes_egress_cidr_blocks" {
  description = "CIDR blocks for nodes egress traffic"
  default     = ["0.0.0.0/0"]
}

variable "cluster_ingress_type" {
  description = "Type of cluster ingress rule (ingress/egress)"
  default     = "ingress"
}

variable "cluster_egress_type" {
  description = "Type of cluster egress rule (ingress/egress)"
  default     = "egress"
}

variable "nodes_ingress_type" {
  description = "Type of nodes ingress rule (ingress/egress)"
  default     = "ingress"
}

variable "nodes_egress_type" {
  description = "Type of nodes egress rule (ingress/egress)"
  default     = "egress"
}
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

variable "cluster_ingress_protocol" {
  description = "Protocol for cluster ingress traffic"
}

variable "cluster_egress_protocol" {
  description = "Protocol for cluster egress traffic"
}

variable "nodes_ingress_protocol" {
  description = "Protocol for nodes ingress traffic"
}

variable "nodes_egress_protocol" {
  description = "Protocol for nodes egress traffic"
}

variable "nodes_egress_from_port" {
  description = "Starting port for nodes egress traffic"
}

variable "nodes_egress_to_port" {
  description = "Ending port for nodes egress traffic"
}

variable "nodes_egress_cidr_blocks" {
  description = "CIDR blocks for nodes egress traffic"
}

variable "cluster_ingress_type" {
  description = "Type of cluster ingress rule (ingress/egress)"
}

variable "cluster_egress_type" {
  description = "Type of cluster egress rule (ingress/egress)"
}

variable "nodes_ingress_type" {
  description = "Type of nodes ingress rule (ingress/egress)"
}

variable "nodes_egress_type" {
  description = "Type of nodes egress rule (ingress/egress)"
}

variable "cluster_policy_arns" {
  description = "List of IAM policy ARNs for EKS cluster role"
}

variable "node_policy_arns" {
  description = "List of IAM policy ARNs for EKS node role"
}

variable "create_bastion" {
  description = "Whether to create a bastion host"
}

variable "bastion_ami_id" {
  description = "AMI ID for bastion host"
}

variable "bastion_instance_type" {
  description = "Instance type for bastion host"
}

variable "bastion_ssh_port" {
  description = "SSH port number"
}

variable "bastion_ssh_protocol" {
  description = "SSH protocol"
}

variable "bastion_allowed_ssh_cidr_blocks" {
  description = "CIDR blocks allowed to SSH to bastion host"
}

variable "bastion_create_key_pair" {
  description = "Whether to create a new key pair for bastion"
}

variable "bastion_public_key" {
  description = "Public key for SSH access to bastion"
}

variable "bastion_existing_key_name" {
  description = "Existing key pair name for bastion"
}

variable "bastion_root_volume_size" {
  description = "Root volume size in GB for bastion"
}

variable "bastion_root_volume_type" {
  description = "Root volume type for bastion"
}

variable "bastion_encrypt_volumes" {
  description = "Whether to encrypt volumes for bastion"
}

variable "bastion_allocate_eip" {
  description = "Whether to allocate Elastic IP for bastion host"
}

variable "bastion_eip_domain" {
  description = "Domain for Elastic IP allocation for bastion"
}

variable "bastion_egress_protocol" {
  description = "Protocol for egress traffic from bastion"
}

variable "bastion_egress_cidr_blocks" {
  description = "CIDR blocks for egress traffic from bastion"
}

variable "tags" {
  description = "Additional tags to apply to all resources"
}

variable "aws_region" {
  description = "AWS region to deploy resources"
}
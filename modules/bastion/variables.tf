variable "cluster_name" {
  description = "Name of the EKS cluster"
}

variable "vpc_id" {
  description = "VPC ID for bastion host"
}

variable "public_subnet_ids" {
  description = "List of public subnet IDs for bastion host"
}

variable "ami_id" {
  description = "AMI ID for bastion host"
}

variable "instance_type" {
  description = "Instance type for bastion host"
}

variable "ssh_port" {
  description = "SSH port number"
}

variable "ssh_protocol" {
  description = "SSH protocol"
}

variable "allowed_ssh_cidr_blocks" {
  description = "CIDR blocks allowed to SSH to bastion host"
}

variable "create_key_pair" {
  description = "Whether to create a new key pair"
}

variable "public_key" {
  description = "Public key for SSH access"
}

variable "existing_key_name" {
  description = "Existing key pair name"
}

variable "root_volume_size" {
  description = "Root volume size in GB"
}

variable "root_volume_type" {
  description = "Root volume type"
}

variable "encrypt_volumes" {
  description = "Whether to encrypt volumes"
}

variable "allocate_eip" {
  description = "Whether to allocate Elastic IP for bastion host"
}

variable "eip_domain" {
  description = "Domain for Elastic IP allocation"
}

variable "egress_protocol" {
  description = "Protocol for egress traffic"
}

variable "egress_cidr_blocks" {
  description = "CIDR blocks for egress traffic"
}

variable "tags" {
  description = "Additional tags to apply to all resources"
}
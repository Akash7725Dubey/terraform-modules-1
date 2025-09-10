variable "cluster_name" {
  description = "Name of the EKS cluster"
}

variable "vpc_id" {
  description = "VPC ID for security groups"
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

variable "tags" {
  description = "Additional tags to apply to all resources"
}
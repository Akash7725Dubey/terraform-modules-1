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

variable "tags" {
  description = "Additional tags to apply to all resources"
}
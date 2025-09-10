variable "cluster_name" {
  description = "Name of the EKS cluster"
}

variable "cluster_version" {
  description = "Kubernetes version for the EKS cluster"
}

variable "vpc_id" {
  description = "VPC ID for the EKS cluster"
}

variable "private_subnet_ids" {
  description = "List of private subnet IDs for the EKS cluster"
}

variable "cluster_iam_role_arn" {
  description = "ARN of the IAM role for the EKS cluster"
}

variable "node_iam_role_arn" {
  description = "ARN of the IAM role for EKS worker nodes"
}

variable "cluster_security_group_id" {
  description = "Security group ID for the EKS cluster"
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

variable "cloudwatch_log_retention" {
  description = "Number of days to retain CloudWatch logs"
}

variable "tags" {
  description = "Additional tags to apply to all resources"
}
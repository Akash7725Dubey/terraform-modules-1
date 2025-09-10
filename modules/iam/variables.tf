variable "cluster_name" {
  description = "Name of the EKS cluster"
}

variable "cluster_policy_arns" {
  description = "List of IAM policy ARNs for EKS cluster role"
}

variable "node_policy_arns" {
  description = "List of IAM policy ARNs for EKS node role"
}

variable "tags" {
  description = "Additional tags to apply to all resources"
}
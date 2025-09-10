output "cluster_id" {
  description = "EKS cluster ID"
  value       = module.eks.cluster_id
}

output "cluster_endpoint" {
  description = "Endpoint for EKS control plane"
  value       = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "Security group ids attached to the cluster control plane"
  value       = module.eks.cluster_security_group_id
}

output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "private_subnet_ids" {
  description = "List of private subnet IDs"
  value       = module.vpc.private_subnet_ids
}

output "public_subnet_ids" {
  description = "List of public subnet IDs"
  value       = module.vpc.public_subnet_ids
}

output "cluster_iam_role_arn" {
  description = "IAM role ARN for EKS cluster"
  value       = module.iam.cluster_iam_role_arn
}

output "node_iam_role_arn" {
  description = "IAM role ARN for EKS worker nodes"
  value       = module.iam.node_iam_role_arn
}

output "vpc_endpoint_ids" {
  description = "List of VPC endpoint IDs"
  value       = module.vpc_endpoints.vpc_endpoint_ids
}
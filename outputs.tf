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

output "bastion_public_ip" {
  description = "Public IP address of the bastion host"
  value       = var.create_bastion ? module.bastion[0].bastion_public_ip : null
}

output "bastion_eip" {
  description = "Elastic IP address of the bastion host"
  value       = var.create_bastion ? module.bastion[0].bastion_eip : null
}

output "bastion_ssh_command" {
  description = "SSH command to connect to bastion host"
  value       = var.create_bastion ? module.bastion[0].bastion_ssh_command : null
}

output "bastion_security_group_id" {
  description = "ID of the bastion host security group"
  value       = var.create_bastion ? module.bastion[0].bastion_security_group_id : null
}

output "configure_kubectl" {
  description = "Command to configure kubectl for the EKS cluster"
  value       = "aws eks update-kubeconfig --region ${var.aws_region} --name ${var.cluster_name}"
}
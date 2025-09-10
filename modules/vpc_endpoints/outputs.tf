output "vpc_endpoint_ids" {
  description = "List of VPC endpoint IDs"
  value       = concat(
    aws_vpc_endpoint.ec2[*].id,
    aws_vpc_endpoint.ecr_dkr[*].id,
    aws_vpc_endpoint.ecr_api[*].id,
    aws_vpc_endpoint.s3[*].id,
    aws_vpc_endpoint.sts[*].id,
    aws_vpc_endpoint.cloudwatch[*].id,
    aws_vpc_endpoint.elasticloadbalancing[*].id,
    aws_vpc_endpoint.autoscaling[*].id
  )
}
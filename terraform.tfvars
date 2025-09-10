cluster_name = "my-eks-cluster"
cluster_version = "1.27"
vpc_cidr = "10.0.0.0/16"

private_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
public_subnet_cidrs = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
availability_zones = ["us-east-1a", "us-east-1b", "us-east-1c"]

internet_gateway_cidr_block = "0.0.0.0/0"
private_subnet_elb_role = "kubernetes.io/role/internal-elb"
public_subnet_elb_role = "kubernetes.io/role/elb"
eip_domain = "vpc"
private_subnet_elb_value = "1"
public_subnet_elb_value = "1"

endpoint_private_access = true
endpoint_public_access = false
enable_vpc_endpoints = true

enabled_cluster_log_types = ["api", "audit", "authenticator", "controllerManager", "scheduler"]
cloudwatch_log_retention = 7

cluster_ingress_port = 443
cluster_egress_from_port = 1024
cluster_egress_to_port = 65535
nodes_ingress_from_port = 0
nodes_ingress_to_port = 65535

aws_region = "us-east-1"

tags = {
  Environment = "dev"
  Project     = "eks-cluster"
  Terraform   = "true"
}
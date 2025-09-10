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

cluster_ingress_protocol = "tcp"
cluster_egress_protocol = "tcp"
nodes_ingress_protocol = "-1"
nodes_egress_protocol = "-1"
nodes_egress_from_port = 0
nodes_egress_to_port = 0
nodes_egress_cidr_blocks = ["0.0.0.0/0"]
cluster_ingress_type = "ingress"
cluster_egress_type = "egress"
nodes_ingress_type = "ingress"
nodes_egress_type = "egress"

cluster_policy_arns = [
  "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy",
  "arn:aws:iam::aws:policy/AmazonEKSServicePolicy"
]

node_policy_arns = [
  "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy",
  "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy",
  "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
]

create_bastion = true
bastion_ami_id = "ami-0c02fb55956c7d316"
bastion_instance_type = "t3.micro"
bastion_ssh_port = 22
bastion_ssh_protocol = "tcp"
bastion_allowed_ssh_cidr_blocks = ["0.0.0.0/0"]
bastion_create_key_pair = true
bastion_root_volume_size = 8
bastion_root_volume_type = "gp2"
bastion_encrypt_volumes = true
bastion_allocate_eip = true
bastion_eip_domain = "vpc"
bastion_egress_protocol = "-1"
bastion_egress_cidr_blocks = ["0.0.0.0/0"]

aws_region = "us-east-1"

tags = {
  Environment = "dev"
  Project     = "eks-cluster"
  Terraform   = "true"
}
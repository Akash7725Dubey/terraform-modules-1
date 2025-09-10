module "vpc" {
  source = "./modules/vpc"

  cluster_name               = var.cluster_name
  vpc_cidr                   = var.vpc_cidr
  private_subnet_cidrs       = var.private_subnet_cidrs
  public_subnet_cidrs        = var.public_subnet_cidrs
  availability_zones         = var.availability_zones
  internet_gateway_cidr_block = var.internet_gateway_cidr_block
  private_subnet_elb_role    = var.private_subnet_elb_role
  public_subnet_elb_role     = var.public_subnet_elb_role
  eip_domain                 = var.eip_domain
  private_subnet_elb_value   = var.private_subnet_elb_value
  public_subnet_elb_value    = var.public_subnet_elb_value
  tags                       = var.tags
}

module "security_groups" {
  source = "./modules/security_groups"

  cluster_name              = var.cluster_name
  vpc_id                    = module.vpc.vpc_id
  cluster_ingress_port      = var.cluster_ingress_port
  cluster_egress_from_port  = var.cluster_egress_from_port
  cluster_egress_to_port    = var.cluster_egress_to_port
  nodes_ingress_from_port   = var.nodes_ingress_from_port
  nodes_ingress_to_port     = var.nodes_ingress_to_port
  cluster_ingress_protocol  = var.cluster_ingress_protocol
  cluster_egress_protocol   = var.cluster_egress_protocol
  nodes_ingress_protocol    = var.nodes_ingress_protocol
  nodes_egress_protocol     = var.nodes_egress_protocol
  nodes_egress_from_port    = var.nodes_egress_from_port
  nodes_egress_to_port      = var.nodes_egress_to_port
  nodes_egress_cidr_blocks  = var.nodes_egress_cidr_blocks
  cluster_ingress_type      = var.cluster_ingress_type
  cluster_egress_type       = var.cluster_egress_type
  nodes_ingress_type        = var.nodes_ingress_type
  nodes_egress_type         = var.nodes_egress_type
  tags                      = var.tags
}

module "iam" {
  source = "./modules/iam"

  cluster_name       = var.cluster_name
  cluster_policy_arns = var.cluster_policy_arns
  node_policy_arns   = var.node_policy_arns
  tags               = var.tags
}

module "vpc_endpoints" {
  source = "./modules/vpc_endpoints"

  cluster_name           = var.cluster_name
  vpc_id                 = module.vpc.vpc_id
  private_subnet_ids     = module.vpc.private_subnet_ids
  route_table_ids        = module.vpc.private_route_table_ids
  node_security_group_id = module.security_groups.node_security_group_id
  enable_vpc_endpoints   = var.enable_vpc_endpoints
  region                 = var.aws_region
  tags                   = var.tags
}

module "bastion" {
  count = var.create_bastion ? 1 : 0

  source = "./modules/bastion"

  cluster_name             = var.cluster_name
  vpc_id                   = module.vpc.vpc_id
  public_subnet_ids        = module.vpc.public_subnet_ids
  ami_id                   = var.bastion_ami_id
  instance_type            = var.bastion_instance_type
  ssh_port                 = var.bastion_ssh_port
  ssh_protocol             = var.bastion_ssh_protocol
  allowed_ssh_cidr_blocks  = var.bastion_allowed_ssh_cidr_blocks
  create_key_pair          = var.bastion_create_key_pair
  public_key               = var.bastion_public_key
  existing_key_name        = var.bastion_existing_key_name
  root_volume_size         = var.bastion_root_volume_size
  root_volume_type         = var.bastion_root_volume_type
  encrypt_volumes          = var.bastion_encrypt_volumes
  allocate_eip             = var.bastion_allocate_eip
  eip_domain               = var.bastion_eip_domain
  egress_protocol          = var.bastion_egress_protocol
  egress_cidr_blocks       = var.bastion_egress_cidr_blocks
  tags                     = var.tags

  depends_on = [module.vpc]
}

module "eks" {
  source = "./modules/eks"

  cluster_name               = var.cluster_name
  cluster_version            = var.cluster_version
  vpc_id                     = module.vpc.vpc_id
  private_subnet_ids         = module.vpc.private_subnet_ids
  cluster_iam_role_arn       = module.iam.cluster_iam_role_arn
  node_iam_role_arn          = module.iam.node_iam_role_arn
  cluster_security_group_id  = module.security_groups.cluster_security_group_id
  endpoint_private_access    = var.endpoint_private_access
  endpoint_public_access     = var.endpoint_public_access
  enabled_cluster_log_types  = var.enabled_cluster_log_types
  cloudwatch_log_retention   = var.cloudwatch_log_retention
  tags                       = var.tags

  depends_on = [module.vpc, module.iam, module.security_groups, module.vpc_endpoints, module.bastion]
}
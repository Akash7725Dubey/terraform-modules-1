resource "aws_vpc_endpoint" "ec2" {
  count = var.enable_vpc_endpoints ? 1 : 0

  vpc_id              = var.vpc_id
  service_name        = "com.amazonaws.${var.region}.ec2"
  vpc_endpoint_type   = "Interface"
  private_dns_enabled = true

  subnet_ids          = var.private_subnet_ids
  security_group_ids  = [var.node_security_group_id]

  tags = merge(var.tags, {
    Name = "${var.cluster_name}-ec2-endpoint"
  })
}

resource "aws_vpc_endpoint" "ecr_dkr" {
  count = var.enable_vpc_endpoints ? 1 : 0

  vpc_id              = var.vpc_id
  service_name        = "com.amazonaws.${var.region}.ecr.dkr"
  vpc_endpoint_type   = "Interface"
  private_dns_enabled = true

  subnet_ids          = var.private_subnet_ids
  security_group_ids  = [var.node_security_group_id]

  tags = merge(var.tags, {
    Name = "${var.cluster_name}-ecr-dkr-endpoint"
  })
}

resource "aws_vpc_endpoint" "ecr_api" {
  count = var.enable_vpc_endpoints ? 1 : 0

  vpc_id              = var.vpc_id
  service_name        = "com.amazonaws.${var.region}.ecr.api"
  vpc_endpoint_type   = "Interface"
  private_dns_enabled = true

  subnet_ids          = var.private_subnet_ids
  security_group_ids  = [var.node_security_group_id]

  tags = merge(var.tags, {
    Name = "${var.cluster_name}-ecr-api-endpoint"
  })
}

resource "aws_vpc_endpoint" "s3" {
  count = var.enable_vpc_endpoints ? 1 : 0

  vpc_id            = var.vpc_id
  service_name      = "com.amazonaws.${var.region}.s3"
  vpc_endpoint_type = "Gateway"

  route_table_ids = var.route_table_ids

  tags = merge(var.tags, {
    Name = "${var.cluster_name}-s3-endpoint"
  })
}

resource "aws_vpc_endpoint" "sts" {
  count = var.enable_vpc_endpoints ? 1 : 0

  vpc_id              = var.vpc_id
  service_name        = "com.amazonaws.${var.region}.sts"
  vpc_endpoint_type   = "Interface"
  private_dns_enabled = true

  subnet_ids          = var.private_subnet_ids
  security_group_ids  = [var.node_security_group_id]

  tags = merge(var.tags, {
    Name = "${var.cluster_name}-sts-endpoint"
  })
}

resource "aws_vpc_endpoint" "cloudwatch" {
  count = var.enable_vpc_endpoints ? 1 : 0

  vpc_id              = var.vpc_id
  service_name        = "com.amazonaws.${var.region}.logs"
  vpc_endpoint_type   = "Interface"
  private_dns_enabled = true

  subnet_ids          = var.private_subnet_ids
  security_group_ids  = [var.node_security_group_id]

  tags = merge(var.tags, {
    Name = "${var.cluster_name}-cloudwatch-endpoint"
  })
}

resource "aws_vpc_endpoint" "elasticloadbalancing" {
  count = var.enable_vpc_endpoints ? 1 : 0

  vpc_id              = var.vpc_id
  service_name        = "com.amazonaws.${var.region}.elasticloadbalancing"
  vpc_endpoint_type   = "Interface"
  private_dns_enabled = true

  subnet_ids          = var.private_subnet_ids
  security_group_ids  = [var.node_security_group_id]

  tags = merge(var.tags, {
    Name = "${var.cluster_name}-elb-endpoint"
  })
}

resource "aws_vpc_endpoint" "autoscaling" {
  count = var.enable_vpc_endpoints ? 1 : 0

  vpc_id              = var.vpc_id
  service_name        = "com.amazonaws.${var.region}.autoscaling"
  vpc_endpoint_type   = "Interface"
  private_dns_enabled = true

  subnet_ids          = var.private_subnet_ids
  security_group_ids  = [var.node_security_group_id]

  tags = merge(var.tags, {
    Name = "${var.cluster_name}-autoscaling-endpoint"
  })
}
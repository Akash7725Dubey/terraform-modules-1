resource "aws_security_group" "cluster" {
  name        = "${var.cluster_name}-cluster-sg"
  description = "Cluster communication with worker nodes"
  vpc_id      = var.vpc_id

  tags = merge(var.tags, {
    Name = "${var.cluster_name}-cluster-sg"
  })
}

resource "aws_security_group" "node" {
  name        = "${var.cluster_name}-node-sg"
  description = "Security group for all nodes in the cluster"
  vpc_id      = var.vpc_id

  tags = merge(var.tags, {
    Name = "${var.cluster_name}-node-sg"
  })
}

resource "aws_security_group_rule" "cluster_ingress" {
  description              = "Allow worker nodes to communicate with the cluster API Server"
  from_port                = var.cluster_ingress_port
  to_port                  = var.cluster_ingress_port
  protocol                 = var.cluster_ingress_protocol
  security_group_id        = aws_security_group.cluster.id
  source_security_group_id = aws_security_group.node.id
  type                     = var.cluster_ingress_type
}

resource "aws_security_group_rule" "cluster_egress" {
  description              = "Allow cluster to communicate with worker nodes"
  from_port                = var.cluster_egress_from_port
  to_port                  = var.cluster_egress_to_port
  protocol                 = var.cluster_egress_protocol
  security_group_id        = aws_security_group.cluster.id
  source_security_group_id = aws_security_group.node.id
  type                     = var.cluster_egress_type
}

resource "aws_security_group_rule" "nodes_ingress" {
  description              = "Allow nodes to communicate with each other"
  from_port                = var.nodes_ingress_from_port
  to_port                  = var.nodes_ingress_to_port
  protocol                 = var.nodes_ingress_protocol
  security_group_id        = aws_security_group.node.id
  source_security_group_id = aws_security_group.node.id
  type                     = var.nodes_ingress_type
}

resource "aws_security_group_rule" "nodes_egress" {
  description       = "Allow all outbound traffic from nodes"
  from_port         = var.nodes_egress_from_port
  to_port           = var.nodes_egress_to_port
  protocol          = var.nodes_egress_protocol
  cidr_blocks       = var.nodes_egress_cidr_blocks
  security_group_id = aws_security_group.node.id
  type              = var.nodes_egress_type
}
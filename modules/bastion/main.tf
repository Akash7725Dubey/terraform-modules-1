resource "aws_security_group" "bastion" {
  name        = "${var.cluster_name}-bastion-sg"
  description = "Security group for bastion host"
  vpc_id      = var.vpc_id

  ingress {
    description = "SSH access"
    from_port   = var.ssh_port
    to_port     = var.ssh_port
    protocol    = var.ssh_protocol
    cidr_blocks = var.allowed_ssh_cidr_blocks
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = var.egress_protocol
    cidr_blocks = var.egress_cidr_blocks
  }

  tags = merge(var.tags, {
    Name = "${var.cluster_name}-bastion-sg"
  })
}

resource "aws_key_pair" "bastion" {
  count      = var.create_key_pair ? 1 : 0
  key_name   = "${var.cluster_name}-bastion-key"
  public_key = var.public_key

  tags = merge(var.tags, {
    Name = "${var.cluster_name}-bastion-key"
  })
}

resource "aws_instance" "bastion" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.public_subnet_ids[0]
  vpc_security_group_ids = [aws_security_group.bastion.id]
  key_name               = var.create_key_pair ? aws_key_pair.bastion[0].key_name : var.existing_key_name

  associate_public_ip_address = true

  root_block_device {
    volume_size = var.root_volume_size
    volume_type = var.root_volume_type
    encrypted   = var.encrypt_volumes
  }

  tags = merge(var.tags, {
    Name = "${var.cluster_name}-bastion-host"
  })

  lifecycle {
    ignore_changes = [ami]
  }
}

resource "aws_eip" "bastion" {
  count    = var.allocate_eip ? 1 : 0
  domain   = var.eip_domain
  instance = aws_instance.bastion.id

  tags = merge(var.tags, {
    Name = "${var.cluster_name}-bastion-eip"
  })
}
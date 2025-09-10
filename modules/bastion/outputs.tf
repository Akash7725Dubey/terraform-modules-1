output "bastion_instance_id" {
  description = "ID of the bastion host instance"
  value       = aws_instance.bastion.id
}

output "bastion_public_ip" {
  description = "Public IP address of the bastion host"
  value       = aws_instance.bastion.public_ip
}

output "bastion_private_ip" {
  description = "Private IP address of the bastion host"
  value       = aws_instance.bastion.private_ip
}

output "bastion_eip" {
  description = "Elastic IP address of the bastion host"
  value       = var.allocate_eip ? aws_eip.bastion[0].public_ip : null
}

output "bastion_security_group_id" {
  description = "ID of the bastion host security group"
  value       = aws_security_group.bastion.id
}

output "bastion_ssh_command" {
  description = "SSH command to connect to bastion host"
  value       = "ssh -i ${var.create_key_pair ? "${var.cluster_name}-bastion-key.pem" : var.existing_key_name}.pem ec2-user@${var.allocate_eip ? aws_eip.bastion[0].public_ip : aws_instance.bastion.public_ip}"
}

output "bastion_key_name" {
  description = "Name of the SSH key pair"
  value       = var.create_key_pair ? aws_key_pair.bastion[0].key_name : var.existing_key_name
}
output "cbm-security-group-vpc-id" {
  description = "The VPC ID where the Security Group will be created"
  value       = data.aws_vpc.sg-vpc-id.id
}

output "cbm-security-group-id" {
  description = "The ID of the CIDR Block Mapped Security Group"
  value       = aws_security_group.allow_cidr_blocks_sg.id
}


output "cbm-security-group-name" {
  description = "The Name of the CIDR Block Mapped Security Group"
  value       = aws_security_group.allow_cidr_blocks_sg.name
}
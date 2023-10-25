output "cac-c5-vpc-id" {
  description = "The VPC ID for CIL Academy C5"
  value       = data.aws_vpc.cac-c5-vpc-id.id
}

output "cbm-security-group-id" {
  description = "The ID of the CIDR Block Mapped Security Group"
  value       = aws_security_group.allow_cidr_blocks_sg.id
}


output "cbm-security-group-name" {
  description = "The Name of the CIDR Block Mapped Security Group"
  value       = aws_security_group.allow_cidr_blocks_sg.name
}
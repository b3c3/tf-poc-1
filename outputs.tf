output "cac-c5-vpc-id" {
  description = "The VPC ID for CIL Academy C5"
  value       = data.aws_vpc.cac-c5-vpc-id.id
}
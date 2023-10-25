
variable "cidr_block_map" {
  type = map(list(object({
    description = string
    port        = number
  })))

  description = "Map of CIDR blocks and their associated descriptions and ports"
  default     = {}
}


variable "vpc_id" {
  type        = string
  description = "VPC ID"
  default     = "<replace-me-with-your-vpc-id>" #example: vpc-043f0e96084ac7d84
}

variable "my_sg_name" {
  type        = string
  description = "Security Group Name for Dynamic Ingress CIDR Blocks"
  default     = "xx-allow-ingress-for-users-sg"
}

variable "cidr_block_map" {
  type = map(list(object({
    description = string
    port        = number
  })))

  description = "Map of CIDR blocks and their associated descriptions and ports"

  default = {
    "10.18.24.0/22" = [
      {
        description = "Allow access from BOI VDI Pool M037-W10-X Offshore towards Algo AWA"
        port        = 32020
      },
      {
        description = "Allow access from BOI VDI Pool M037-W10-X Offshore towards Algo Stadium"
        port        = 32040
      },
      {
        description = "Allow access from BOI VDI Pool M037-W10-X Offshore towards Algo RiskWatch"
        port        = 32050
      },
      {
        description = "Allow access from BOI VDI Pool M037-W10-X Offshore towards Algo Apps"
        port        = 32080
      },
      {
        description = "Allow access from BOI VDI Pool M037-W10-X Offshore towards Algo RiskManager"
        port        = 32090
      }
    ],

    "10.20.24.0/22" = [
      {
        description = "Allow access from BOI VDI Pool M037-W10-X Offshore towards Algo RiskManager"
        port        = 32090
      },
      {
        description = "Allow access from BOI VDI Pool M037-W10-X Offshore towards Algo Apps"
        port        = 32080
      },
      {
        description = "Allow access from BOI VDI Pool M037-W10-X Offshore towards Algo RiskWatch"
        port        = 32050
      },
      {
        description = "Allow access from BOI VDI Pool M037-W10-X Offshore towards Algo Stadium"
        port        = 32040
      },
      {
        description = "Allow access from BOI VDI Pool M037-W10-X Offshore towards Algo AWA"
        port        = 32020
      }
    ]
  }

  # Add more CIDR blocks with their associated rules
}


variable "vpc_id" {
  type        = string
  description = "VPC ID"
  default     = "vpc-054f0e96084ac7d49"
}
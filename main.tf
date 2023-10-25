resource "aws_security_group" "allow_cidr_blocks_sg" {
  name        = "sg-allow-cidr-blocks-mapped-b3c3"
  description = "Security Group that allows some CIDR blocks via a mapping variable"

  // Other security group configuration settings

  dynamic "sg_ingress_rules" {
    for_each = flatten([
      for cbm_key, cbm_values in var.cidr_block_map : [
        for current_pdo_list_index, port_desc_object in cbm_values : {
          inbound_cidr_block     = cbm_key
          current_pdo_list_index = current_pdo_list_index
          description            = port_desc_object.description
          port                   = port_desc_object.port
        }
      ]
    ])

    content {
      from_port   = sg_ingress_rules.value.port
      to_port     = sg_ingress_rules.value.port
      protocol    = "tcp"
      cidr_blocks = [sg_ingress_rules.value.inbound_cidr_block]
      description = sg_ingress_rules.value.description
    }
  }
}

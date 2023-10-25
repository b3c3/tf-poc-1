resource "aws_security_group" "allow_cidr_blocks_sg" {
  name        = var.my_sg_name
  description = "Security Group that allows some CIDR blocks via a mapping variable"
  vpc_id      = data.aws_vpc.cac-c5-vpc-id.id

  // Other security group configuration settings

  dynamic "ingress" {
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
      from_port   = ingress.value.port
      to_port     = ingress.value.port
      protocol    = "tcp"
      cidr_blocks = [ingress.value.inbound_cidr_block]
      description = ingress.value.description
    }
  }

  tags = {
    Name = var.my_sg_name
  }
}

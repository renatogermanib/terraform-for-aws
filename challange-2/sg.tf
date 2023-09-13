resource "aws_security_group" "sg_webserver" {
  name = var.sg_name

  dynamic "ingress" {
    iterator = port
    for_each = var.ingressrules
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = var.traffic_protocol
      cidr_blocks = var.cidr_blocks
    }
  }

  dynamic "egress" {
    iterator = port
    for_each = var.egressrules
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = var.traffic_protocol
      cidr_blocks = var.cidr_blocks
    }
  }
}
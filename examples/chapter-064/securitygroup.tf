resource "aws_security_group" "example" {
  name = "example"

  #   dynamic "ingress" {
  #     for_each = [22, 443]
  #     content {
  #       from_port = ingress.value
  #       to_port   = ingress.value
  #       protocol  = "tcp"
  #     }
  #   }

  dynamic "ingress" {
    for_each = var.ports
    content {
      from_port   = ingress.key
      to_port     = ingress.key
      cidr_blocks = ingress.value
      protocol    = "tcp"
    }
  }
}
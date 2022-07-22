resource "aws_security_group" "this" {
  vpc_id = var.vpc_id
  name   = "${var.environment_name}-sg"
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    self        = true
    description = "Access from self"
  }
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Access from all"
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Access to all"
  }
  tags = merge({
    Name = "${var.environment_name}-sg"
  }, var.default_tags)
}

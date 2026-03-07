
resource "aws_security_group" "eks_sg" {
  name        = "expense-sg"
  description = "EKS security group"
  vpc_id      = module.vpc.vpc_id

  ingress {
    description = "Allow HTTPS"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
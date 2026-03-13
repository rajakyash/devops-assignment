resource "aws_security_group" "devops_sg" {
  name        = "devops-secure-sg"
  description = "Secure security group for DevOps project"

  ingress {
    description = "Allow SSH from internal network"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }

  egress {
    description = "Allow internal outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.0.0.0/16"]
  }
}
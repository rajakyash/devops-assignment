resource "aws_security_group" "devops_sg" {

  name        = "devops-security-group"
  description = "Security group for DevOps assignment"

  ingress {
    description = "SSH access open to internet"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"

    cidr_blocks = ["0.0.0.0/0"]   # INTENTIONAL VULNERABILITY
  }

  ingress {
    description = "NodeJS App Port"
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"

    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {

    from_port   = 0
    to_port     = 0
    protocol    = "-1"

    cidr_blocks = ["0.0.0.0/0"]
  }
}
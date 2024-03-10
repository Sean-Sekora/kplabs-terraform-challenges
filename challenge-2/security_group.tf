resource "aws_security_group" "payment_app" {
  name        = "payment_app"
  description = "Application Security Group"
  depends_on  = [aws_eip.payment_app]

  # Below ingress allows HTTPS from DEV VPC
  ingress {
    description = "Allow HTTPS from DEV VPC"
    from_port   = var.https
    to_port     = var.https
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks
  }

  # Below ingress allows APIs access from DEV VPC
  ingress {
    description = "Allow APIs from DEV VPC"
    from_port   = var.apis
    to_port     = var.apis
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks
  }

  # Below ingress allows APIs access from Prod App Public IP.
  ingress {
    description = "Allow APIs from Prod App Public IP"
    from_port   = var.prod_apis
    to_port     = var.prod_apis
    protocol    = "tcp"
    cidr_blocks = ["${aws_eip.payment_app.public_ip}/32"]
  }

  egress {
    description = "Allow all traffic to anywhere"
    from_port   = var.splunk
    to_port     = var.splunk
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "payment_app"
    Team = "Payments Team"
    Env  = "Production"
  }
}

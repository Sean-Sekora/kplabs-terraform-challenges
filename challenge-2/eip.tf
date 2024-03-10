resource "aws_eip" "payment_app" {
  domain = "vpc"

  tags = {
    Name = "payment_app"
    Team = "Payments Team"
    Env  = "Production"

  }
}
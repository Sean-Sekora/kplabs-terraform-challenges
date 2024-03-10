resource "aws_instance" "udemy" {
  for_each      = var.instance_config
  ami           = data.aws_ami.ami_hvm.id
  instance_type = each.value.instance_type
  tags = {
    Name = each.key
  }
}

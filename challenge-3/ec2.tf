resource "aws_instance" "udemy" {
  for_each      = tomap(local.instance_configs)
  ami           = each.value.ami_id
  instance_type = each.value.instance_type
  tags = {
    Name = each.key
  }
}

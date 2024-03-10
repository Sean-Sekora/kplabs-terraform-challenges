locals {
  instance_configs = {
    linux_instance_1 = { instance_type = "t2.small", ami_id = data.aws_ami.ami_hvm.id }
    linux_instance_2 = { instance_type = "t2.micro", ami_id = data.aws_ami.ami_hvm.id }
  }
}
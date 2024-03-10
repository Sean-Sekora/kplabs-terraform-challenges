
variable "instance_config" {
  type = map(object({
    instance_type = string
  }))
  default = {
    linux_instance_1 = { instance_type = "t2.small" }
    linux_instance_2 = { instance_type = "t2.micro" }
  }
}

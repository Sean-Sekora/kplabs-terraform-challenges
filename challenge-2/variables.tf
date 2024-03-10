variable "https" {
  default = 443
}

variable "apis" {
  default = 80
}

variable "prod_apis" {
  default = 8443
}

variable "cidr_blocks" {
  default = ["172.31.0.0/16"]
}

variable "splunk" {
  default = "8088"
}

terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  profile = "udemy"
}

provider "digitalocean" {}

resource "aws_eip" "kplabs_app_ip" {
  domain =  "vpc"
}

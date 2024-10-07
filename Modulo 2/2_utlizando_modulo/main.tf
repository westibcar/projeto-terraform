provider "aws" {
  region  = var.region
  profile = var.account
}

module "site" {
  source        = "../modules/site-ec2"
  env           = var.env
  vpc_cidr      = var.vpc_cidr
  subnet_cidr   = var.subnet_cidr
  region        = var.config[var.env].region
  ami           = var.config[var.env].ami_id
  instance_type = var.config[var.env].instance_type
  key_pair      = var.config[var.env].key_pair
}

output "instance_public_ip" {
  description = "value"
  value       = module.site.instance_public_ip
}
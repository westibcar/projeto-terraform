variable "vpc_cidr_block" {
    description = "Virtual privete cloud"
}

variable "subnet_privete_cidr_block" {
    description = "Subnet privada"
}

variable "subnet_public_cidr_block" {
    description = "Subnet publica"
}

variable "region" {
  description = "Region Aws"
  type = string
  default = "us-east-1"
}

variable "account" {
  description = "Profile account"
  type = string
  default = "account_terraform"
}
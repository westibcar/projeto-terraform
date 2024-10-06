variable "env" {
  description = "Enviroment"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block VPC"
  type        = string
}

variable "subnet_cidr" {
  description = "CIDR block Subnet"
  type        = string
}

variable "account" {
  description = "Profile aws"
  type        = string
  default     = "udayaccount"
}

variable "ami" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "key_pair" {
  type = string
}

variable "region" {
  type = string
}

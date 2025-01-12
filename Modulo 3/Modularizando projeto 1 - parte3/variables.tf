variable "region" {
  default = "us-east-1"
}

variable "account" {
  default = "account_terraform"
}

variable "env" {}


variable "config" {
  description = "Configuração de cada ambiente"
  type = map(object({
    region        = string
    instance_type = string
    ami_id        = string
    key_pair      = string
  }))
  default = {
    "dev" = {
      region        = "us-east-1"
      instance_type = "t2.micro"
      ami_id        = "ami-0ba9883b710b05ac6"
      key_pair      = "chave-ssh-dev"
    }
    "prod" = {
      region        = "sa-east-1"
      instance_type = "t3.xlarge"
      ami_id        = "ami-09523541dfaa61c85"
      key_pair      = "chave-ssh-prod"
    }
  }
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "subnet_cidr" {
  default = "10.0.1.0/24"
}
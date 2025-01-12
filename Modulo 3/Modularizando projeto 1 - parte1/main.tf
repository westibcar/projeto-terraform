provider "aws" {
  region = var.region
  profile = var.account
}

module "site" {
  source = "../modules/site-ec2"
  env = "dev"
  vpc_cidr =  "10.0.0.0/16"
  subnet_cidr = "10.0.1.0/24"
  region =  "us-east-1"
  ami = "ami-0ba9883b710b05ac6"
  instance_type = "t2.micro"
  key_pair = "chave-ssh-dev"
}
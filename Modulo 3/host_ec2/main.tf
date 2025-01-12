provider "aws" {
  region  = "us-east-1"
  profile = "account_terraform"
}

module "ec2" {
  source        = "../modules/ec2"
  ami_id        = "ami-0b72821e2f351e396"
  instance_type = "t2.micro"
  key_name      = "chave-ssh-dev"
  instance_name = "host-ec2"
}

output "instance_public_ip" {
  value = module.ec2.instance_public_ip
}

output "instance_id" {
  value = module.ec2.instance_id
}
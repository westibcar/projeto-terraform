# Referencia https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest
module "eks-vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.16.0"

  name = "eks-vpc"
  cidr = var.vpc_cidr_block
  private_subnets = var.subnet_privete_cidr_block
  public_subnets = var.subnet_public_cidr_block

  azs = ["us-east-1a", "us-east-1b", "us-east-1c"]

  enable_nat_gateway = true
  single_nat_gateway = true
  enable_dns_hostnames = true

  tags = {
    "ManagerBy" = "Payments"
    "DeployBy" = "Terraform"
    "kubernetes.io/cluster/eks-cluster-payments" = "payments"
    "Create" = "2024-12-18"
    "Demanda" = "CAC1010MB"
  }

  public_subnet_tags = {
    "kubernetes.io/cluster/eks-cluster-payments" = "payments"
    "kubernetes.io/role/elb" = 1
  }

  private_subnet_tags = {
    "kubernetes.io/cluster/eks-cluster-payments" = "payments"
    "kubernetes.io/role/internal-elb" = 1
  }
}

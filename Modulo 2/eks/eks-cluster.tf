# Referencia: https://registry.terraform.io/modules/terraform-aws-modules/eks/aws/latest
# Versao eks: https://docs.aws.amazon.com/pt_br/eks/latest/userguide/platform-versions.html


module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.31.4"

  cluster_name    = "eks-cluster-payments"
  cluster_version = "1.31"

  subnet_ids = module.eks-vpc.private_subnets
  vpc_id     = module.eks-vpc.vpc_id

  eks_managed_node_groups = {
    dev = {
      ami_type       = "AL2023_x86_64_STANDARD"
      instance_types = ["t2.small"]

      min_size     = 2
      max_size     = 3
      desired_size = 3
    }
  }

  tags = {
    ManagerBy  = "Payments"
    DeployBy   = "Terraform"
    Create     = "2024-12-18"
    Demanda    = "CAC1010MB"
    Enviroment = "dev"  # Corrigido para "Environment"
  }
}
